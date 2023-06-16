#import "template.typ" : *
#import "typst-physics/physics.typ" : *

#show : project.with(
    title: (
        // JPN title
        ja: [
          ここには日本語のタイトルを入力してくださいここには日本語のタイトルを入力してくださいここには日本語のタイトルを入力してください\ 
          (ここには日本語のサブタイトルを入力してくださいここには日本語のサブタイトルを入力してください)
        ],
        // ENG title
        en: [
          Please put the English title of your resume here, Please put the English title of your resume here, Please put the English title of your resume here\ 
          (Please put the English subtitle of your resume here, Please put the English subtitle of your resume here)
        ],
    ),
    // author information
    author: (name: "Your Name", grade: "M1"),
    // don't edit if you're student affiliating to uenohara.lab
    affiliation: [ 
      東京工業大学\ 
      未来産業研究所\ 
      小山・植之原・宮本\ 
      研究室\ 
      Koyama, Uenohara\ 
      and Miyamoto Lab.\ 
      Research Report No.1
    ],
    // your labotory
    lab: "Uenohara Lab.",
    // report date
    date: datetime(year: 1999, month: 10, day: 14)
)

// Use `#Abstract` to print the title for abstract, Don't use `= Abstract` because of wrong numbering  
#Abstract
#lorem(100) //break a line to start a new paragraph like below, `#lorem(n)` function will print a n words placeholder texts, replace them with your english abstract

#lorem(150)

= Introduction
光ファイバー（ひかりファイバー、中: 光導纖維、英: optical fiber）とは、離れた場所に光を伝える伝送路である。optical fiberを逐語訳して光学繊維（こうがくせんい）とも呼ばれる[1]。

電磁気の影響を受けずに極細の信号線で高速信号が長距離に伝送できるため、デジタル通信を中心に多くの通信用途に使用されている。2023年現在、1本の光ファイバーにおいて、1.7 Pbpsの通信容量をもつ結合型19コアファイバが開発されている[2]。無中継での伝送では100 km間隔[3]のものが実用化されている[4]。

== 構造
光ファイバーはコア(core)と呼ばれる芯とその外側のクラッド(clad)[注 1]と呼ばれる部分、そしてそれらを覆う被覆の3重構造になっていて、クラッドよりもコアの屈折率を高くすることで、全反射や屈折によりできるだけ光を中心部のコアにだけ伝播させる構造になっている。コアとクラッドはともに光に対して透過率が非常に高い石英ガラスまたはプラスチックでできている[5][4]。

また、被覆がないコアとクラッドのみの状態を単に「光ファイバー」と呼び、光ファイバーの表面をシリコーン樹脂で被覆したものを「光ファイバー素線」、光ファイバー素線をナイロン繊維で被覆したものを「光ファイバー心線」、光ファイバー心線を高抗張力繊維と外皮で被覆したものを「光ファイバーコード」とする呼びかたもある。複数の光ファイバー心線に保護用のシースと呼ばれる被覆をしたものを光ファイバー・ケーブルと呼ぶこともある。

== 特性
一般的な石英ガラスを使った光ファイバーのコアとクラッドの屈折率の差は、わずかに0.2ないし0.3パーセント程度である。石英ガラスの屈折率はおよそ1.5なので、1秒間に地球を5周程度回る速度(約20万 km/s)（1kmあたり約5μs）で光信号が伝わってゆく（物質中の光の伝播速度は、光速を屈折率で割ったものになる）。

= 公式
$ E = m c^2 $