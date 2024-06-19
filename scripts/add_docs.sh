#!/bin/bash

# Elasticsearch URL
ES_URL="http://localhost:9200"

# Index name
INDEX_NAME="post"

# Adding documents
curl -X POST "$ES_URL/$INDEX_NAME/_doc/1" -H 'Content-Type: application/json' -d '{
  "post": {
    "id": "1",
    "type": "post",
    "poster": "小資yp投資理財筆記"
  },
  "site": {
    "name": "FACEBOOK",
    "channel": "小資yp投資理財筆記"
  },
  "title": "最近的AI話題非常火熱，從股票市場中輝達(NVIDIA)的表現，即可看到非常耀眼的成就",
  "posttime": "2024-06-15 09:23",
  "author": {
    "id": "user1",
    "name": "小資yp投資理財筆記"
  },
  "content": "最近的AI話題非常火熱，從股票市場中輝達(NVIDIA)的表現，即可看到非常耀眼的成就。 身為S&P500成分股的其中一員，NVIDIA奪下了過去30年以來(1994-2024)漲幅的第一名。然而，放眼望向未來的30年，許多投資者其實會擔心，自己無法及時抓住這些機會。"
}'

curl -X POST "$ES_URL/$INDEX_NAME/_doc/2" -H 'Content-Type: application/json' -d '{
  "post": {
    "id": "2",
    "type": "post",
    "poster": "alvinist"
  },
  "site": {
    "name": "alvinist",
    "channel": "alvinist"
  },
  "title": "COMPUTEX2024 圓滿落幕啦！ 上禮拜真的過得好充實。 NVIDIA 今年帶來了非常精彩的演講",
  "posttime": "2024-06-13 18:50",
  "author": {
    "id": "user2",
    "name": "alvinist"
  },
  "content": "#COMPUTEX2024 圓滿落幕啦！ 上禮拜真的過得好充實。 NVIDIA 今年帶來了非常精彩的內容， 除了 AI 教父 —— 黃仁勳再次親臨現場開講， 在展區、NVIDIA AI SUMMIT 台北還有很多精彩的內容。 我全部親自跑完，先消化一遍（其實很多遍）， 再透過影片用白話文的方式， 希望讓大家簡單理解這次 NVIDIA 的展出重點，包括： 執行長黃仁勳 Keynote 重點 NVIDIA Inception 合作夥伴如何利用 AI 提升場域安全 全球最頂尖的 NVIDA GB200 NVL72 資料中心架構 NVIDIA 如何定義 AI PC NVIDIA 的 AI 實際應用，包括數位孿生、遊戲（ACE）等 要在有限的時間內講清楚，難度非常大。 但我盡力了 =) 希望能帶大家窺視未來科技的面貌。 完整版影片，請到這裡觀看：https://youtu.be/8kxfyOyVstU 回顧 NVIDIA Keynote 的精彩重播，請到這裡觀賞： https://nvda.ws/3UTW9Ho #NVIDIAkeynote #NVIDIA #COMPUTEX2024 #AI #AIPC"
}'

curl -X POST "$ES_URL/$INDEX_NAME/_doc/3" -H 'Content-Type: application/json' -d '{
  "post": {
    "id": "3",
    "type": "post",
    "poster": "理財周刊"
  },
  "site": {
    "name": "example.net",
    "channel": "國內新聞"
  },
  "title": "最近很紅的CoWoS到底是什麼？概念、供應鏈一次看",
  "posttime": "2024-06-18 10:07",
  "author": {
    "id": "user3",
    "name": "理財周刊"
  },
  "content": "CoWoS概念解析 CoWoS (Chip-on-Wafer-on-Substrate)，是一種先進的半導體封裝技術，可以分成「CoW」和「WoS」兩個部分來看： CoW (Chip-on-Wafer)是將晶片堆疊在導線載板上。 WoS (Wafer-on-Substrate)是將堆疊好的晶片封裝至基板上。 因此，CoWoS的意思就是把晶片堆疊起來，並封裝在基板上，並根據排列的形式，分為2.5D與3D兩種，此封裝技術的好處是能夠減少晶片的空間，同時還能減少功耗與成本，並且提高晶片效能。所以CoWoS的技術門檻相當高，除了芯片之間的堆疊和連接要求非常精確外，多個晶片堆疊也讓配套的散熱技術要求大大提升。 ▲2.5D(來源:台積電官網) ▲3D (來源:台積電官網) 供應鏈介紹 ▲半導體供應鏈 (來源:產業價值鏈資訊平台) 上游部份主要是IP與IC設計，主要是將半導體的晶圓產品設計出來 中游為IC製造，會將上游設計出來的產品圖製作成晶圓半成品 下游則是IC封裝與測試，會將中游製造出來的晶圓半成品，按順序經過前段測試、切割、封裝、後段測試的流程後，將晶圓完成品送至各大IC通路做使用。 而Cowos，則是位處於半導體產業鏈的下游IC封裝與測試的位階中。 台廠相關供應鏈整理 Cowos 概念股除了包含封裝技術本身以外，也包含封裝過程中會使用到的半導體材料以及後續的測試等等，以下是我們整理的台灣 Cowos 概念股。 CoWoS封裝：(2330)台積電、(3711)日月光投控 CoWoS測試：(2449)京元電 鑽石碟切割：(1560)中砂 EUV光罩盒：(3680)家登 AOI檢測設備：(6187)萬潤 濕製程設備：(3131)弘塑、(3583)辛耘 測試探針卡：(6515)穎崴、(6223)旺矽 測試版卡：(6510)精測 HDI載板：(3037)欣興 PCB基板：(2316)楠梓電 HBM矽智財：(3443)創意。 貼模設備：(2467)志聖 揀晶設備：(6640)均華 未來展望 CoWoS封裝技術的應用非常廣泛，凡舉需要大量運算的需求，幾乎都需要用到，例如AI、高效能運算HPC、5G、車用電子、物聯網等，都少不了CoWoS的封裝技術，像是近來的Nvida剛發表的BlackWell就使用到CoWoS封裝技術。 預計至2027年為止，CoWoS產業的年複合成長率CAGR為10%，且占據所有IC封裝的市場份額將從21年的44%成長至50%以上"
}'
