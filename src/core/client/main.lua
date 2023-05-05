local font1 = dxCreateFont('assets/fonts/poppins-medium.ttf', 20, false, 'default')
local font2 = dxCreateFont('assets/fonts/poppins-semibold.ttf', 22, false, 'default')
local font3 = dxCreateFont('assets/fonts/poppins-semibold.ttf', 18, false, 'default')
local font4 = dxCreateFont('assets/fonts/poppins-semibold.ttf', 21, false, 'default')
local font5 = dxCreateFont('assets/fonts/poppins-bold.ttf', 21, false, 'default')
local font6 = dxCreateFont('assets/fonts/poppins-medium.ttf', 18, false, 'default')
local font7 = dxCreateFont('assets/fonts/poppins-medium.ttf', 14, false, 'default')
local font8 = dxCreateFont('assets/fonts/inter-bold.ttf', 48, false, 'default')
local font9 = dxCreateFont('assets/fonts/inter-medium.ttf', 16, false, 'default')
local font10 = dxCreateFont('assets/fonts/inter-medium.ttf', 18, false, 'default')

local aba = 1


---------------------> Itens Svg's <---------------------


local backgroundSvgData = [[
    <svg width="1920" height="1080">
    <rect x="0" y="0" width="1920" height="1080" fill="#242425"/>
    </svg>
]]

local rectangleSvgData = [[
    <svg width="360" height="4">
    <rect x="0" y="0" width="360" height="4" rx="2" ry="2" fill="#404040" />
    </svg>
]]

local rectangleSlotSvgData = [[
    <svg width="360" height="104">
    <rect x="0" y="0" width="360" height="104" rx="4" ry="4" fill="#262626" />
    </svg>
]]

local rectangleSelectedSvgData = [[
    <svg width="360" height="104">
    <rect x="0" y="0" width="360" height="104" rx="4" ry="4" stroke="#404040" stroke-width="1" fill="#262626" />
    </svg>
]]

local rectangleButtonSvgData = [[
    <svg width="360" height="73">
    <rect x="0" y="0" width="360" height="104" rx="4" ry="4" fill="#EA580C" />
    </svg>
]]

local logoSvgIconData = [[
    <svg width="166.71" height="47" viewBox="0 0 166.71 47" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M42.6223 22.2294H39.5676V36.6211H42.6223V22.2294ZM44.3542 34.3651C44.7628 35.0458 45.4049 35.6487 46.2804 36.1349C47.1754 36.6406 48.226 36.8934 49.4129 36.8934C52.2729 36.8934 54.3742 35.5515 54.3742 33.5288C54.3742 31.9146 53.2847 30.9617 51.0861 30.4754L49.6269 30.1448C48.0704 29.7753 47.6618 29.5614 47.6618 29.0168C47.6618 28.4723 48.3817 28.1222 49.4712 28.1222C50.5608 28.1222 51.6309 28.6668 52.0784 29.3863L54.2769 28.1417C53.4987 26.8386 51.6893 25.8273 49.5296 25.8273C46.8252 25.8273 44.8795 27.1303 44.8795 29.1724C44.8795 30.7477 45.9691 31.7201 48.1677 32.2063L49.6269 32.537C51.1834 32.9065 51.592 33.1399 51.592 33.7039C51.592 34.2484 50.7164 34.5985 49.4712 34.5985C48.1482 34.5985 47.0781 33.9567 46.5528 33.1204L44.3542 34.3651ZM59.1485 21.9766H56.1911V36.6211H59.1485V21.9766ZM69.5443 26.0996V27.4999C68.8439 26.4108 67.6765 25.8273 66.2757 25.8273C63.2988 25.8273 61.1586 28.2583 61.1586 31.3506C61.1586 34.4818 63.2988 36.8934 66.2757 36.8934C67.6765 36.8934 68.8439 36.3099 69.5443 35.2208V36.6211H72.5017V26.0996H69.5443ZM69.5249 31.3506C69.5249 32.2258 69.2719 32.9259 68.7466 33.4899C68.2213 34.0539 67.5598 34.3262 66.7621 34.3262C65.1083 34.3262 63.9798 33.0621 63.9798 31.3506C63.9798 30.5143 64.2327 29.8142 64.7386 29.2502C65.2639 28.6862 65.9254 28.3945 66.7621 28.3945C67.5598 28.3945 68.2213 28.6668 68.7466 29.2308C69.2719 29.7753 69.5249 30.4755 69.5249 31.3506ZM91.9343 36.6211L88.3933 31.2728C90.0471 30.4366 90.9615 28.9974 90.9615 27.1498C90.9615 24.1742 88.5684 22.2294 84.8328 22.2294H79.6963V36.6211H82.7315V32.0119H84.8328C85.1635 32.0119 85.397 32.0119 85.5526 31.9924L88.4906 36.6211H91.9343ZM82.7315 24.9521H84.8522C86.8951 24.9521 87.9263 25.6912 87.9263 27.1498C87.9263 28.6084 86.8951 29.3475 84.8522 29.3475H82.7315V24.9521ZM92.5663 31.3506C92.5663 34.5207 94.94 36.8934 98.1892 36.8934C101.399 36.8934 103.812 34.5207 103.812 31.3506C103.812 28.2195 101.399 25.8273 98.1892 25.8273C94.94 25.8273 92.5663 28.2 92.5663 31.3506ZM100.971 31.3506C100.971 32.1869 100.719 32.887 100.193 33.451C99.6873 34.015 99.0258 34.2873 98.1892 34.2873C97.3526 34.2873 96.6911 34.015 96.1657 33.451C95.6404 32.887 95.3875 32.1869 95.3875 31.3506C95.3875 30.5143 95.6404 29.8142 96.1657 29.2697C96.6911 28.7057 97.3526 28.4334 98.1892 28.4334C99.0258 28.4334 99.6873 28.7057 100.193 29.2697C100.719 29.8142 100.971 30.5143 100.971 31.3506ZM108.758 21.9766H105.801V36.6211H108.758V21.9766ZM121.644 32.3425C121.683 32.0119 121.703 31.6035 121.703 31.1172C121.703 27.9666 119.368 25.8273 116.236 25.8273C113.064 25.8273 110.768 28.2 110.768 31.3506C110.768 34.5207 113.142 36.8934 116.586 36.8934C118.609 36.8934 120.497 35.9793 121.411 34.579L119.135 33.1593C118.648 33.9178 117.656 34.3846 116.586 34.3846C115.107 34.3846 113.998 33.6844 113.628 32.3425H121.644ZM113.628 30.3588C113.959 29.0168 115.01 28.2583 116.255 28.2583C117.675 28.2583 118.707 29.1141 118.843 30.3588H113.628ZM135.023 31.3506C135.023 28.2583 132.844 25.8273 129.906 25.8273C128.525 25.8273 127.338 26.4108 126.638 27.4999V26.0996H123.68V40.7441H126.638V35.2208C127.338 36.3099 128.525 36.8934 129.906 36.8934C132.844 36.8934 135.023 34.4818 135.023 31.3506ZM132.202 31.3506C132.202 33.0621 131.074 34.3262 129.42 34.3262C127.785 34.3262 126.657 33.1204 126.657 31.3506C126.657 29.6197 127.785 28.3945 129.42 28.3945C130.256 28.3945 130.918 28.6862 131.424 29.2502C131.949 29.8142 132.202 30.5143 132.202 31.3506ZM139.976 21.9766H137.018V36.6211H139.976V21.9766ZM150.372 26.0996V27.4999C149.671 26.4108 148.504 25.8273 147.103 25.8273C144.126 25.8273 141.986 28.2583 141.986 31.3506C141.986 34.4818 144.126 36.8934 147.103 36.8934C148.504 36.8934 149.671 36.3099 150.372 35.2208V36.6211H153.329V26.0996H150.372ZM150.352 31.3506C150.352 32.2258 150.099 32.9259 149.574 33.4899C149.049 34.0539 148.387 34.3262 147.589 34.3262C145.936 34.3262 144.807 33.0621 144.807 31.3506C144.807 30.5143 145.06 29.8142 145.566 29.2502C146.091 28.6862 146.753 28.3945 147.589 28.3945C148.387 28.3945 149.049 28.6668 149.574 29.2308C150.099 29.7753 150.352 30.4755 150.352 31.3506ZM163.613 26.0996L160.85 33.0232L157.951 26.0996H154.779L159.41 36.6017L159.352 36.7572C158.865 37.9436 158.223 38.3909 157.153 38.3909C156.589 38.3909 156.044 38.2937 155.538 38.0797L154.916 40.4524C155.558 40.783 156.55 41.0164 157.406 41.0164C159.371 41.0164 160.908 39.9079 162.231 36.7767L166.706 26.0996H163.613Z" fill="white"/>
    <path d="M16.4317 0.0189791C15.8974 0.0638008 14.881 0.265499 14.881 0.328996C14.881 0.343936 14.967 0.392495 15.0716 0.433579C15.4639 0.597927 15.7928 0.86312 16.5775 1.6475C17.3921 2.45429 17.6798 2.69708 18.2104 3.0183C18.3823 3.11915 18.5093 3.20506 18.4869 3.20506C18.4682 3.20506 18.2889 3.16397 18.0946 3.11168C17.9003 3.05939 17.7246 3.0183 17.7097 3.0183C17.691 3.0183 17.7732 3.13035 17.889 3.26482C18.1431 3.56737 18.4794 4.06788 18.954 4.85598C19.3688 5.54698 19.7275 6.04003 20.1535 6.49946L20.4599 6.83562L20.2544 6.71984C19.9293 6.5368 19.1782 6.30896 19.2193 6.40235C19.2268 6.42102 19.4323 6.83562 19.6752 7.32491C20.1086 8.2064 20.3366 8.60234 20.5869 8.90861C20.6579 8.99827 20.7028 9.06923 20.6916 9.06923C20.6766 9.06923 20.5907 9.0244 20.4973 8.96839L20.3254 8.86755L20.3515 8.9609C20.4337 9.25227 20.6691 10.2346 20.6878 10.3765L20.714 10.5446L20.6318 10.4139C20.0339 9.46889 19.5743 8.87873 18.9727 8.27366C17.2762 6.57041 14.9707 5.43493 12.6091 5.12865C12.355 5.09504 12.1271 5.07637 12.1046 5.08382C12.0822 5.09131 12.2504 5.19587 12.4821 5.31542C12.71 5.43493 12.8931 5.53953 12.8856 5.54698C12.8819 5.55447 12.8071 5.5358 12.7249 5.50591C12.1345 5.29675 11.1817 5.25565 10.4717 5.40504C9.72436 5.56192 8.99199 5.85326 8.18485 6.31269C7.49729 6.7049 7.07506 7.0149 6.5893 7.48179C5.92792 8.12051 5.44961 8.77416 5.07219 9.56227C4.87789 9.96566 4.54532 10.892 4.58271 10.9256C4.59389 10.9368 4.69481 10.9107 4.80691 10.8658C4.92274 10.8248 5.2964 10.7314 5.64392 10.6604C5.98768 10.5894 6.38005 10.496 6.51083 10.4513C6.88821 10.3243 7.43004 10.0292 7.81119 9.74528C7.99803 9.60337 8.15498 9.49132 8.15498 9.49877C8.15498 9.50626 8.0877 9.6706 8.00176 9.86109C7.74766 10.4325 7.74021 10.3803 8.07275 10.2757C8.47634 10.1487 8.94342 10.0889 9.89626 10.0404C10.9874 9.98809 11.7011 9.87228 12.3363 9.64817C12.5755 9.566 12.5942 9.57721 12.4223 9.71167C12.3363 9.77892 12.2242 9.89471 12.1719 9.96566L12.0747 10.0964L12.5717 10.1562C12.8445 10.1935 13.263 10.2533 13.4984 10.2981C14.4849 10.4736 15.1052 10.4849 15.8525 10.3392C16.0469 10.3018 16.2113 10.2757 16.2187 10.2832C16.2262 10.2906 16.1291 10.3728 16.002 10.4699C15.8787 10.5708 15.7815 10.6529 15.7853 10.6604C15.7928 10.6641 15.9385 10.6865 16.1141 10.709C16.5812 10.7725 17.3061 10.9592 17.7769 11.1422C18.1917 11.3029 18.8979 11.639 18.8718 11.6651C18.8643 11.6726 18.6663 11.6129 18.4309 11.5344C16.5401 10.892 14.4139 10.765 12.5643 11.1796C12.0635 11.2954 12.1084 11.3178 12.9566 11.3738L13.3677 11.4L12.8258 11.4485C12.1271 11.5083 11.6226 11.6129 10.9949 11.8183C9.58612 12.2852 8.22597 13.2227 7.17594 14.4516C6.7836 14.9073 6.15958 15.7514 6.18947 15.7813C6.20069 15.7962 6.92187 15.5684 7.77383 15.2883C7.82614 15.2696 7.69536 15.475 7.62811 15.5161C7.60567 15.5273 7.46367 15.7066 7.31421 15.9083C6.55191 16.9317 6.111 18.0784 5.969 19.4118L5.94283 19.6472L6.10351 19.5463C6.38751 19.3707 7.28804 18.945 8.00549 18.6499C9.28718 18.1232 10.1092 17.6713 10.7893 17.1259C10.9313 17.0101 11.0509 16.9205 11.0546 16.9243C11.0658 16.9354 10.8304 17.7646 10.7893 17.858C10.7744 17.8954 10.9351 17.7908 11.148 17.6227C11.3611 17.4584 11.8244 17.1259 12.1719 16.8869C13.4461 16.0129 13.9394 15.6431 14.4176 15.1874C14.5709 15.0417 14.7016 14.9297 14.7091 14.9372C14.7166 14.9446 14.6568 15.094 14.5783 15.2658L14.4326 15.5759L14.5372 15.5086C15.1687 15.094 15.946 14.6869 16.5289 14.4702C16.9399 14.3171 17.6611 14.1117 17.7732 14.1117C17.8181 14.1117 17.6761 14.2051 17.4593 14.3208C11.2265 17.6339 7.31794 24.0322 6.23432 32.7126C6.07737 33.9751 5.95032 35.7942 5.95032 36.8775V37.3258L5.62148 37.4674C4.9003 37.7737 3.88393 38.4051 3.12912 39.0139C2.33694 39.6488 1.35793 40.6647 0.752589 41.4789C-0.237634 42.8089 -0.252581 44.1271 0.718959 44.568C1.33925 44.848 1.73534 44.7997 4.26881 44.1424C5.68877 43.7725 5.93537 43.7165 6.59676 43.6043C9.48148 43.1077 12.5007 43.3356 15.1799 44.2506C15.5387 44.3738 16.2038 44.5978 16.6559 44.7547C21.2109 46.3086 25.0336 46.2117 27.9108 44.4746C28.5685 44.0788 29.3868 43.3988 29.8651 42.8611C30.0482 42.6556 30.0893 42.5846 30.0893 42.4763C30.0893 42.3308 29.9548 42.1625 29.8352 42.1625C29.7941 42.1625 29.5849 42.23 29.3681 42.312C27.5222 43.003 25.3848 43.074 23.2886 42.5136C21.0503 41.9123 18.8793 40.758 16.5252 38.9205C14.6045 37.4191 12.3625 36.601 9.98595 36.5374L9.29467 36.5187L9.30586 35.5401C9.34324 31.383 9.98968 27.7636 11.2676 24.5327C11.6226 23.6363 12.3737 22.1236 12.837 21.3728C14.1524 19.24 15.7815 17.4845 17.6761 16.1548C18.1058 15.8523 18.883 15.3704 18.9054 15.3928C18.9129 15.4003 18.6737 15.9008 18.3786 16.5059C17.7807 17.7273 17.422 18.5042 17.422 18.5789C17.422 18.676 17.6237 18.6312 17.9825 18.4631C18.1842 18.366 18.3935 18.295 18.4645 18.295H18.5915L18.2963 18.6013C17.5415 19.3895 17.0109 20.2747 16.6186 21.3989C16.4915 21.765 16.4915 21.7687 16.5737 21.7687C16.6298 21.7687 16.783 21.638 17.052 21.3616C17.3958 21.0068 17.5789 20.8686 17.6275 20.9171C17.6499 20.9395 17.3173 21.9107 16.8316 23.2254C16.2486 24.8054 15.8974 25.8774 15.9646 25.8774C16.0543 25.8774 16.2075 25.7877 16.499 25.5636C16.8278 25.3134 17.123 25.1416 17.123 25.2013C17.123 25.2536 16.8353 26.0753 16.6485 26.5497C16.2785 27.5022 15.6919 28.5667 15.2435 29.1045L15.0865 29.2876L15.1986 29.2614C15.2621 29.2465 15.4714 29.1718 15.6657 29.1008C17.9152 28.2642 19.8508 26.4937 21.0166 24.2153C21.6519 22.9714 21.9658 21.9144 22.1152 20.5361C22.1638 20.0692 22.1713 19.748 22.1526 18.8927C22.1414 18.3062 22.1078 17.6601 22.0816 17.4546C22.0517 17.2492 22.033 17.0736 22.0405 17.0662C22.048 17.0587 22.1302 17.2081 22.2199 17.3986C22.3805 17.7348 22.388 17.746 22.4179 17.6376C22.4329 17.5779 22.4478 17.3351 22.4478 17.0923C22.4441 16.5918 22.4553 16.5955 22.6757 17.1073C22.8925 17.6115 23.0457 18.1793 23.2848 19.3446C23.4081 19.9497 23.5427 20.5361 23.58 20.6482C23.6734 20.9134 23.8042 21.1711 23.8453 21.1711C23.8827 21.1711 23.9612 20.764 23.9612 20.566C23.9612 20.4951 23.9724 20.3568 23.9836 20.2597L24.0097 20.0842L24.1741 20.3942C24.4096 20.8349 24.8542 21.567 25.5492 22.6652C26.2219 23.7222 26.6217 24.3833 26.8945 24.8839C27.0626 25.1901 27.0775 25.2088 27.1112 25.1266C27.1299 25.0781 27.1373 24.7905 27.1261 24.4767L27.1037 23.9164L27.3952 24.4767C27.5521 24.783 27.9146 25.4404 28.2023 25.9334C28.4863 26.4265 28.8002 26.9979 28.8973 27.2033C29.0767 27.5732 29.0767 27.5732 29.1178 27.4648C29.7306 25.8886 29.9698 24.2825 29.824 22.7025C29.6409 20.6743 28.8375 18.7769 27.6007 17.4397C27.4662 17.294 27.3765 17.1745 27.4064 17.1745C27.4326 17.1745 27.6156 17.2006 27.8099 17.2268C28.0042 17.2567 28.1687 17.2754 28.1724 17.2716C28.1948 17.2492 27.2158 16.5395 26.7412 16.2295C25.9678 15.7253 25.2129 15.2957 24.204 14.7765L23.2699 14.2984H23.5053C24.3983 14.2947 25.6464 14.7093 27.3877 15.5833C27.6605 15.7178 27.8959 15.8298 27.9071 15.8298C27.9632 15.8298 27.8735 15.5684 27.7315 15.3368C27.5745 15.0716 27.4587 14.784 27.5035 14.784C27.5222 14.784 27.7016 14.8774 27.9034 14.9932C29.0468 15.6319 30.5116 16.2669 31.4607 16.5358C31.9278 16.6703 31.9203 16.6665 31.9203 16.603C31.9203 16.5283 31.7783 16.4163 31.5167 16.2781C31.3075 16.1698 31.1094 15.9942 31.1468 15.9531C31.173 15.9307 32.1408 16.2407 32.5631 16.4125C33.6205 16.8346 34.1474 17.3052 34.6069 18.2204C34.7078 18.4258 34.8012 18.5789 34.8086 18.564C34.8388 18.5117 34.9471 17.8991 34.9844 17.5667C35.1449 16.1212 34.7752 14.5487 34.009 13.417C32.9778 11.8855 31.1057 10.8808 28.8936 10.6716C28.3294 10.6193 27.3205 10.6492 26.7637 10.7314C25.7436 10.8883 24.6114 11.2394 23.5726 11.7175C23.3894 11.8034 23.2325 11.8631 23.225 11.8556C23.2138 11.8482 23.2587 11.6838 23.3185 11.4896C23.793 10.0142 24.0023 8.62849 24.0023 6.97756C24.006 6.17824 23.9163 4.90081 23.8491 4.72153C23.8229 4.65055 23.8154 4.65431 23.7631 4.77754C23.7332 4.85226 23.6847 5.01287 23.6622 5.13238C23.6361 5.25565 23.6099 5.37892 23.5987 5.4088C23.5912 5.43869 23.5352 5.27808 23.4754 5.05397C22.8999 2.86142 21.2334 1.07229 19.1072 0.366347C18.244 0.0787416 17.2538 -0.0519887 16.4317 0.0189791Z" fill="white"/>
    <path d="M8.17366 44.1424C6.56313 44.3067 5.0946 44.8331 3.70831 45.7446C3.30099 46.0098 2.65456 46.4992 2.67698 46.5216C2.68819 46.5326 2.90118 46.473 3.15527 46.3871C5.48324 45.6176 7.9158 45.2704 9.98595 45.4085C11.3162 45.4979 12.4447 45.7073 14.5447 46.2525C16.215 46.6859 16.7755 46.8055 17.8143 46.9511C18.2552 47.0146 19.7686 47.0146 20.2058 46.9511C20.7476 46.8765 21.3828 46.7456 21.3828 46.7122C21.3828 46.6969 21.2184 46.682 21.0204 46.682C19.8247 46.682 18.457 46.3721 15.5536 45.4532C13.0052 44.6503 11.8879 44.3699 10.539 44.1982C9.98595 44.1272 8.64074 44.0973 8.17366 44.1424Z" fill="white"/>
    </svg>
]]

local bellSvgIconData = [[
    <svg width="19" height="21" viewBox="0 0 19 21" fill="none" xmlns="http://www.w3.org/2000/svg">
    <mask id="path-1-inside-1_31_13" fill="white">
    <path d="M18 17V18H0V17L2 15V9C2 5.9 4.03 3.17 7 2.29V2C7 1.46957 7.21071 0.960859 7.58579 0.585786C7.96086 0.210714 8.46957 0 9 0C9.53043 0 10.0391 0.210714 10.4142 0.585786C10.7893 0.960859 11 1.46957 11 2V2.29C13.97 3.17 16 5.9 16 9V15L18 17ZM11 19C11 19.5304 10.7893 20.0391 10.4142 20.4142C10.0391 20.7893 9.53043 21 9 21C8.46957 21 7.96086 20.7893 7.58579 20.4142C7.21071 20.0391 7 19.5304 7 19"/>
    </mask>
    <path d="M18 17V18H0V17L2 15V9C2 5.9 4.03 3.17 7 2.29V2C7 1.46957 7.21071 0.960859 7.58579 0.585786C7.96086 0.210714 8.46957 0 9 0C9.53043 0 10.0391 0.210714 10.4142 0.585786C10.7893 0.960859 11 1.46957 11 2V2.29C13.97 3.17 16 5.9 16 9V15L18 17ZM11 19C11 19.5304 10.7893 20.0391 10.4142 20.4142C10.0391 20.7893 9.53043 21 9 21C8.46957 21 7.96086 20.7893 7.58579 20.4142C7.21071 20.0391 7 19.5304 7 19" fill="white"/>
    <path d="M18 17H19V16.5858L18.7071 16.2929L18 17ZM18 18V19H19V18H18ZM0 18H-1V19H0V18ZM0 17L-0.707107 16.2929L-1 16.5858V17H0ZM2 15L2.70711 15.7071L3 15.4142V15H2ZM7 2.29L7.28409 3.2488L8 3.03668V2.29H7ZM9 0V-1V0ZM11 2.29H10V3.03668L10.7159 3.2488L11 2.29ZM16 15H15V15.4142L15.2929 15.7071L16 15ZM17 17V18H19V17H17ZM18 17H0V19H18V17ZM1 18V17H-1V18H1ZM0.707107 17.7071L2.70711 15.7071L1.29289 14.2929L-0.707107 16.2929L0.707107 17.7071ZM3 15V9H1V15H3ZM3 9C3 6.34076 4.74073 4.00239 7.28409 3.2488L6.71591 1.3312C3.31927 2.33761 1 5.45924 1 9H3ZM8 2.29V2H6V2.29H8ZM8 2C8 1.73478 8.10536 1.48043 8.29289 1.29289L6.87868 -0.12132C6.31607 0.441288 6 1.20435 6 2H8ZM8.29289 1.29289C8.48043 1.10536 8.73478 1 9 1V-1C8.20435 -1 7.44129 -0.68393 6.87868 -0.12132L8.29289 1.29289ZM9 1C9.26522 1 9.51957 1.10536 9.70711 1.29289L11.1213 -0.12132C10.5587 -0.68393 9.79565 -1 9 -1V1ZM9.70711 1.29289C9.89464 1.48043 10 1.73478 10 2H12C12 1.20435 11.6839 0.441288 11.1213 -0.12132L9.70711 1.29289ZM10 2V2.29H12V2H10ZM10.7159 3.2488C13.2593 4.00239 15 6.34076 15 9H17C17 5.45924 14.6807 2.33761 11.2841 1.3312L10.7159 3.2488ZM15 9V15H17V9H15ZM15.2929 15.7071L17.2929 17.7071L18.7071 16.2929L16.7071 14.2929L15.2929 15.7071ZM10 19C10 19.2652 9.89464 19.5196 9.70711 19.7071L11.1213 21.1213C11.6839 20.5587 12 19.7957 12 19H10ZM9.70711 19.7071C9.51957 19.8946 9.26522 20 9 20V22C9.79565 22 10.5587 21.6839 11.1213 21.1213L9.70711 19.7071ZM9 20C8.73478 20 8.48043 19.8946 8.29289 19.7071L6.87868 21.1213C7.44129 21.6839 8.20435 22 9 22V20ZM8.29289 19.7071C8.10536 19.5196 8 19.2652 8 19H6C6 19.7957 6.31607 20.5587 6.87868 21.1213L8.29289 19.7071Z" fill="white" mask="url(#path-1-inside-1_31_13)"/>
    <rect x="12" y="1" width="7" height="7" rx="3.5" fill="#EA580C"/>
    </svg>
]]

local calendarSvgIconData = [[
    <svg width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M5 12C4.71667 12 4.479 11.904 4.287 11.712C4.095 11.52 3.99934 11.2827 4 11C4 10.7167 4.096 10.479 4.288 10.287C4.48 10.095 4.71734 9.99933 5 10C5.28334 10 5.521 10.096 5.713 10.288C5.905 10.48 6.00067 10.7173 6 11C6 11.2833 5.904 11.521 5.712 11.713C5.52 11.905 5.28267 12.0007 5 12ZM9 12C8.71667 12 8.479 11.904 8.287 11.712C8.095 11.52 7.99934 11.2827 8 11C8 10.7167 8.096 10.479 8.288 10.287C8.48 10.095 8.71734 9.99933 9 10C9.28334 10 9.521 10.096 9.713 10.288C9.905 10.48 10.0007 10.7173 10 11C10 11.2833 9.904 11.521 9.712 11.713C9.52 11.905 9.28267 12.0007 9 12ZM13 12C12.7167 12 12.479 11.904 12.287 11.712C12.095 11.52 11.9993 11.2827 12 11C12 10.7167 12.096 10.479 12.288 10.287C12.48 10.095 12.7173 9.99933 13 10C13.2833 10 13.521 10.096 13.713 10.288C13.905 10.48 14.0007 10.7173 14 11C14 11.2833 13.904 11.521 13.712 11.713C13.52 11.905 13.2827 12.0007 13 12ZM2 20C1.45 20 0.979002 19.804 0.587002 19.412C0.195002 19.02 -0.000664969 18.5493 1.69779e-06 18V4C1.69779e-06 3.45 0.196002 2.979 0.588002 2.587C0.980002 2.195 1.45067 1.99933 2 2H3V0H5V2H13V0H15V2H16C16.55 2 17.021 2.196 17.413 2.588C17.805 2.98 18.0007 3.45067 18 4V18C18 18.55 17.804 19.021 17.412 19.413C17.02 19.805 16.5493 20.0007 16 20H2ZM2 18H16V8H2V18Z" fill="white"/>
    </svg>
]]

local lockSvgIconData = [[
    <svg width="16" height="21" viewBox="0 0 16 21" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M2 21C1.45 21 0.979002 20.804 0.587002 20.412C0.195002 20.02 -0.000664969 19.5493 1.69779e-06 19V9C1.69779e-06 8.45 0.196001 7.979 0.588001 7.587C0.980001 7.195 1.45067 6.99933 2 7H3V5C3 3.61667 3.48767 2.43733 4.463 1.462C5.43834 0.486667 6.61734 -0.000665984 8 6.8306e-07C9.38334 6.8306e-07 10.5627 0.487667 11.538 1.463C12.5133 2.43833 13.0007 3.61733 13 5V7H14C14.55 7 15.021 7.196 15.413 7.588C15.805 7.98 16.0007 8.45067 16 9V19C16 19.55 15.804 20.021 15.412 20.413C15.02 20.805 14.5493 21.0007 14 21H2ZM8 16C8.55 16 9.021 15.804 9.413 15.412C9.805 15.02 10.0007 14.5493 10 14C10 13.45 9.804 12.979 9.412 12.587C9.02 12.195 8.54934 11.9993 8 12C7.45 12 6.979 12.196 6.587 12.588C6.195 12.98 5.99934 13.4507 6 14C6 14.55 6.196 15.021 6.588 15.413C6.98 15.805 7.45067 16.0007 8 16ZM5 7H11V5C11 4.16667 10.7083 3.45833 10.125 2.875C9.54167 2.29167 8.83333 2 8 2C7.16667 2 6.45834 2.29167 5.875 2.875C5.29167 3.45833 5 4.16667 5 5V7Z" fill="white" fill-opacity="0.5"/>
    </svg>
]]

local rectangleSlot2SvgData = [[
    <svg width="360" height="50">
    <rect x="0" y="0" width="360" height="50" rx="4" ry="4" stroke="#404040" stroke-width="1" fill="#262626" />
    </svg>
]]

local rectangleSlot3SvgData = [[
    <svg width="250" height="50">
    <rect x="0" y="0" width="250" height="50" rx="4" ry="4" stroke="#404040" stroke-width="1" fill="#262626" />
    </svg>
]]

local rectangleSlot4SvgData = [[
    <svg width="50" height="50">
    <rect x="0" y="0" width="50" height="50" rx="4" ry="4" stroke="#404040" stroke-width="1" fill="#262626" />
    </svg>
]]

local rectangleButton2SvgData = [[
    <svg width="175" height="50">
    <rect x="0" y="0" width="175" height="50" rx="12" ry="12" fill="#EA580C" />
    </svg>
]]


---------------------> Funções Locais dos Svgs's <---------------------


local backgroundSvg
local rectangleSvg
local rectangleSlotSvg
local rectangleSelectedSvg
local rectangleButtonSvg
local logoSvgIcon
local bellSvgIcon
local calendarSvgIcon
local lockSvgIcon
local rectangleSlot2Svg
local rectangleSlot3Svg
local rectangleSlot4Svg
local rectangleButton2Svg


---------------------> Funções de Dias Meses e Anos <---------------------


local monthsTable = {
	[1] = "Jan.",
	[2] = "Fev.",
	[3] = "Mar.",
	[4] = "Abr.",
	[5] = "Maio.",
	[6] = "Jun.",
	[7] = "Jul.",
	[8] = "Ago.",
	[9] = "Set.",
	[10] = "Out.",
	[11] = "Nov.",
	[12] = "Dez."
}
 
function getRealMonth()
	local time = getRealTime()
	local month = time.month + 1
	return monthsTable[month]
end

local daysTable = {
	[1] = "1",
	[2] = "2",
	[3] = "3",
	[4] = "4",
	[5] = "5",
	[6] = "6",
	[7] = "7",
	[8] = "8",
	[9] = "8",
	[10] = "10",
	[11] = "11",
	[12] = "12",
	[13] = "13",
	[14] = "14",
	[15] = "15",
	[16] = "16",
	[17] = "17",
	[18] = "18",
	[19] = "19",
	[20] = "20",
	[21] = "21",
	[22] = "22",
	[23] = "23",
	[24] = "24",
	[25] = "25",
	[26] = "26",
	[27] = "27",
	[28] = "28",
	[29] = "29",
	[30] = "30",
	[31] = "31"
}

function getRealDay()
    local time = getRealTime()
    local day = time.monthday
    return daysTable[day]
end


---------------------> Função do Painel <---------------------


function drawAccountsSvg()
    local realMonth = getRealMonth()
    local realDay = getRealDay()
    
    if aba == 2 then
        dxDrawImage(0, 0, 1920, 1080, backgroundSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(24, 15, 166.71, 47, logoSvgIcon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(1537, 43, 19, 21, bellSvgIcon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(1566, 43, 18, 20, calendarSvgIcon, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        dxDrawText(''..realDay..' '..realMonth..' 2023  |', 1592, 38.5, 125, 21, tocolor(255, 255, 255, 255), 1, font1)

        dxDrawText('revoltz', 1748, 36.5, 81, 21, tocolor(255, 255, 255, 255), 1, font1)

        dxDrawText('Bom dia, revoltz.', 111, 219, 212, 33, tocolor(255, 255, 255, 255), 1, font2)
        dxDrawText('Personagens', 111, 293, 120, 27, tocolor(255, 255, 255, 255), 1, font3)

        dxDrawImage(111, 327, 360, 4, rectangleSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        if isCursorOnElement(111, 361, 360, 104) then
            dxDrawImage(111, 361, 360, 104, rectangleSelectedSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        else
            dxDrawImage(111, 361, 360, 104, rectangleSlotSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end

        dxDrawImage(111, 470, 360, 104, rectangleSlotSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(111, 579, 360, 104, rectangleSlotSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        dxDrawText('Criar personagem', 133, 397, 197, 32, tocolor(255, 255, 255, 100), 1, font4)
        dxDrawText('Criar personagem', 133, 506, 197, 32, tocolor(255, 255, 255, 100), 1, font4)
        dxDrawText('Criar personagem', 133, 615, 197, 32, tocolor(255, 255, 255, 100), 1, font4)

        dxDrawImage(425, 510, 16, 21, lockSvgIcon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(425, 619, 16, 21, lockSvgIcon, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        dxDrawImage(111, 693, 360, 73, rectangleButtonSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        dxDrawText('ENTRAR', 249, 714, 83, 32, tocolor(255, 255, 255, 255), 1, font5)

        showCursor(true)
        showChat(false)
    end

    if aba == 3 then
        dxDrawImage(0, 0, 1920, 1080, backgroundSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(24, 15, 166.71, 47, logoSvgIcon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(1537, 43, 19, 21, bellSvgIcon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(1566, 43, 18, 20, calendarSvgIcon, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        dxDrawText(''..realDay..' '..realMonth..' 2023  |', 1592, 38.5, 125, 21, tocolor(255, 255, 255, 255), 1, font1)

        dxDrawText('revoltz', 1748, 36.5, 81, 21, tocolor(255, 255, 255, 255), 1, font1)
        
        dxDrawText('CRIAÇÃO DE PERSONAGENS', 111, 219, 301, 33, tocolor(255, 255, 255, 255), 1, font2)
        dxDrawText('Para criar seu personagem, preencha as \ninformações abaixo.', 111, 257, 460, 54, tocolor(255, 255, 255, 255), 1, font6)

        dxDrawImage(111, 401, 360, 50, rectangleSlot2Svg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(111, 462, 360, 50, rectangleSlot2Svg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(111, 523, 360, 50, rectangleSlot2Svg, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        dxDrawImage(111, 584, 250, 50, rectangleSlot3Svg, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        dxDrawImage(366, 584, 50, 50, rectangleSlot4Svg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(421, 584, 50, 50, rectangleSlot4Svg, 0, 0, 0, tocolor(255, 255, 255, 255), false)

        dxDrawImage(111, 651, 360, 73, rectangleButtonSvg, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText('PRÓXIMO', 240, 672, 101, 32, tocolor(255, 255, 255, 255), 1, font5)
    end

end
addEventHandler('onClientRender', root, drawAccountsSvg)

---------------------> Funções de Click <---------------------

addEventHandler('onClientClick', root,
    function()
        if aba == 2 then
            if isCursorOnElement(111, 361, 360, 104) then
                aba = 3
            end
        end
    end
)


---------------------> Função de Carregar os Svg's <---------------------


function init()
    backgroundSvg = svgCreate(1920, 1080, backgroundSvgData)
    rectangleSvg = svgCreate(360, 4, rectangleSvgData)
    rectangleSlotSvg = svgCreate(360, 104, rectangleSlotSvgData)
    rectangleSelectedSvg = svgCreate(360, 104, rectangleSelectedSvgData)
    rectangleButtonSvg = svgCreate(360, 73, rectangleButtonSvgData)
    logoSvgIcon = svgCreate(166.71, 47, logoSvgIconData)
    bellSvgIcon = svgCreate(19, 21, bellSvgIconData)
    calendarSvgIcon = svgCreate(18, 20, calendarSvgIconData)
    lockSvgIcon = svgCreate(16, 21, lockSvgIconData)
    rectangleSlot2Svg = svgCreate(360, 50, rectangleSlot2SvgData)
    rectangleSlot3Svg = svgCreate(250, 50, rectangleSlot3SvgData)
    rectangleSlot4Svg = svgCreate(50, 50, rectangleSlot4SvgData)
    rectangleButton2Svg = svgCreate(175, 50, rectangleButton2SvgData)
end
addEventHandler('onClientResourceStart', resourceRoot, init)