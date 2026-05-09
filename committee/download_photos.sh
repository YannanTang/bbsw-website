#!/bin/bash
# Downloads all committee headshots from the live BBSW website
# Run once from the repo root: bash committee/download_photos.sh

OUT="committee/photos"
BASE="https://images.squarespace-cdn.com/content/v1/5c4f6c7789c172ed71d6f025"

download() {
  local url="$1"
  local file="$2"
  echo "Downloading $file..."
  curl -sL "$url" -o "$OUT/$file"
}

# Steering Committee
download "$BASE/3b8862ae-070e-45a7-a391-2dd3621ed0d0/Ruixiao+Lu+2025.jpg"          "ruixiao-lu.jpg"
download "$BASE/c5417b70-5deb-4cc1-95f6-8787adbb2806/Ron+Yu.jpg"                    "ron-yu.jpg"
download "$BASE/a935fc0d-17fd-4f51-9373-4b1aec16adbb/Jingjing+Gao.png"              "jingjing-gao.png"
download "$BASE/1b6327f2-e289-4e89-9b68-837ad1cbf077/Jing+Du+2025.jpg"              "jing-du.jpg"
download "$BASE/740f0cec-6c9b-4481-a723-475a79bf5fc6/Tuan+Nguyen+Photo.jpg"         "tuan-nguyen.jpg"
download "$BASE/f6d743cc-f75c-4db4-a94a-7f75b0ba076d/GodwinYung.jpeg"               "godwin-yung.jpeg"
download "$BASE/b33fb47d-a324-48b5-bd1d-1f5aa6d9e6e0/Haijun+Ma.jpeg"               "haijun-ma.jpeg"
download "$BASE/951f1036-8dd0-4664-955b-a409f8575d5f/Li+Zheng.png"                  "li-zheng.png"
download "$BASE/99fe1a95-1c3b-4e7b-9c7b-43e8f228e6f3/Laura+Harris.jpg"              "laura-harris.jpg"
download "$BASE/581faa98-8cc4-457d-ac84-7ee72a83af32/Nalin+Tikoo.png"               "nalin-tikoo.png"
download "$BASE/4dfad9d8-7938-49e9-9dc0-51f9384dfa95/Merrill+Birkner.jpeg"          "merrill-birkner.jpeg"
download "$BASE/b37ec6f8-cd93-45ed-99e9-f70bbddc8f8a/George+Wu.png"                 "george-wu.png"
download "$BASE/75b8aa8c-654a-41a5-bdd8-052f768f76f6/Yannan+Tang.png"               "yannan-tang.png"

# Fundraising & Outreach
download "$BASE/43b640ad-639e-41f7-928f-9066b1e0a459/Danqing+Xu+%28AbbVie%29.JPG"  "danqing-xu.jpg"
download "$BASE/724cf618-fa13-4d6a-95d3-931526596820/JieLiu.jpg"                    "jie-liu.jpg"
download "$BASE/8490dabe-3c2e-4821-abd9-9b0e0785652a/Jiayi+Shen+%28BeOne+Medicines%29.JPG" "jiayi-shen.jpg"
download "$BASE/9e6e9900-221b-4982-90ef-c7076deb3047/Jeni+Zhou.jpg"                 "jeni-zhou.jpg"
download "$BASE/1777955064396-NX4MF2BNMCLVZ7ETFFI0/Jiying+Zou+%28Genentech%29.JPG" "jiying-zou.jpg"
download "$BASE/1777955063047-E51SBPS2ZBPUQ31BCREK/Mingwei+Fei+%28Abbvie%29.jpg"   "mingwei-fei.jpg"
download "$BASE/c56c21c2-5b76-4382-84d6-79be9e3d6d39/Meilin+Huang+%28Genentech%29.jpg" "meiling-huang.jpg"
download "$BASE/f2088c03-368c-4e6a-8ee2-1524c7db6926/Rong+%28Roger%29+Jiang.jpg"   "rong-jiang.jpg"
download "$BASE/9f1836e5-2ce0-4e0a-9144-6c18c553da8b/Renie+%28Yunyi%29+Liu+%28UCSD%29.jpg" "renie-liu.jpg"
download "$BASE/1777955064261-DSX7ZF6U3DLIAOP47CYP/Serene+Jiang+%28Johnson+%26+Johnson%29.jpg" "serene-jiang.jpg"
download "$BASE/15469714-0103-4bf9-874e-0d72af95eb26/Tracy+%28Huijuan%29+He+%28BridgeBio%29.jpg" "tracy-he.jpg"
download "$BASE/1777955066787-2VP3FUEDFUXQMM5104PG/Xuehan+Ren+%28Gilead%29.jpeg"   "xuehan-ren.jpeg"
download "$BASE/1778005783231-3DTQ1RPLG132OYFCTM3K/Xuefeng%2BHou%2B%2528Genentech%2529.jpg" "xuefeng-hou.jpg"
download "$BASE/1777955069835-FPL1J3PMVV06T8W510DD/Yuan+Tian+%28Corcept%29.jpg"    "yuan-tian.jpg"

# Operations
download "$BASE/1593377212677-XZQY80Q319E8T8CO53TJ/Xiyu_Cao_cropped.jpg"           "xiyu-cao.jpg"
download "$BASE/377e956a-c383-4720-bf3e-4fe9478060b3/Xiaoye+Ma.jpg"                 "xiaoye-ma.jpg"
download "$BASE/2946bede-720a-4d56-842e-d8cabe8de9b9/NaXu.jpg"                      "na-xu.jpg"
download "$BASE/1593534578355-6M999SE92R39E28SY7N8/Jingyang_cropped.jpg"            "jingyang-zhang.jpg"
download "$BASE/71d043cf-2841-4d31-a0ec-cb96be2824de/zhua13%40gene.com_0434_web+-+Anqi+Zhu.jpg" "anqi-zhu.jpg"
download "$BASE/507230c3-b58c-4692-93f7-c13178e565d1/IMG_4574.jpg"                  "jingye-wang.jpg"

# Statistical Technical Programs
download "$BASE/5bda052b-acc9-4fe9-a25a-8f82c2fdc472/Li+Zhang+%28UCSF%29.JPG"      "li-zhang.jpg"
download "$BASE/f4d4822c-6ed9-4503-875a-b26393b5eb3f/Tara+Maddala+2025.png"         "tara-maddala.png"
download "$BASE/f9dc7fb7-6f6a-4be6-a0d4-204f1b606e59/MengjiaYu_photo.jpg"           "mengjia-yu.jpg"

# Data Science Technical Programs
download "$BASE/6cf3f6c6-3799-483c-836d-07e765470b08/Jenny+Yuan.png"                "jenny-yuan.png"
download "$BASE/d7de4a86-f59f-4098-9342-e47a9276c175/Gianna+Huang.png"              "gianna-huang.png"
download "$BASE/b0befb4e-b3f8-46df-a599-c2f825f2eb80/Zijie_Yuan.JPG"               "zijie-yuan.jpg"

# Non-Technical Programs
download "$BASE/55d18867-571a-48e9-85e0-61ab7ad0a4df/Yinqi+Zhao.png"               "yinqi-zhao.png"
download "$BASE/88ee88b6-5ceb-4cac-8908-0b46a522ab4e/Charles+Liu.jpg"              "charles-liu.jpg"
download "$BASE/5ec50ed4-660c-4d56-b694-a27091e56b9b/Maria+Ciarleglio.png"         "maria-ciarleglio.png"
download "$BASE/76c42969-55e8-4349-a01d-3f36e008c4b3/Ran+Ma.jpeg"                  "ran-ma.jpeg"
download "$BASE/c3a8d571-28e9-4424-b177-5f1d8c9cadf4/Jiying+Zou.webp"              "jiying-zou-2.webp"

# Technology
download "$BASE/1777955997569-HVV8QEVQ0AJNTMQ280MY/Xuefeng+Hou+%28Genentech%29.jpg" "xuefeng-hou-2.jpg"
download "$BASE/6992465b-eee0-4717-9caa-155ce26c0a99/YiLi.jpg"                     "yi-li.jpg"
download "$BASE/08e0d233-1523-40c5-afec-2d2bb35eed21/Chenqi+Fu.JPG"                "chenqi-fu.jpg"
download "$BASE/6f49aa80-d6d3-4ff0-89ba-3f7282889b37/LucieZhang.png"               "lucie-zhang.png"
download "$BASE/339815c5-008e-400e-aa72-00a3e6a36922/Shreya+Sreeram+Genentech.png" "shreya-sreeram.png"

echo "Done! $(ls $OUT | grep -v .gitkeep | wc -l | tr -d ' ') photos downloaded."
