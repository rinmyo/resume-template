#import "template.typ" : project
#import "typst-physics/physics.typ" : *

#show : project.with(
    title: (
        ja: [マルチコアファイバ導入による次世代エッジ/クラウドコンピューティング基盤の高性能化に関する研究\ （光モジュールを用いた測定結果と3✕4スイッチを用いた測定構成の説明）],
        en: text(10.5pt)[A study on performance improvement of optical switching systems on edge/cloud computing platform with multicore-fibers\ ] + [(Measurement results using the module and the optical measurement configuration using 3✕4 optical  switches)]
    ),
    author: (name: "D. Takeuchi", grade: "M1"),
    affiliation: [ 
      東京工業大学\ 
      未来産業研究所\ 
      小山・植之原・宮本\ 
      研究室\ 
      Koyama, Uenohara\ 
      and Miyamoto Lab.\ 
      Research Report No.1
    ],
    lab: "Uenohara Lab.",
    date: (1999,10,14)
)

= Abstract

With the development and spread of IoT, the high efficiency of social systems, and the creation of new industries, factories of intellectual productivity, etc. are required, and the world of Cyber-physical System (CPS) that integrates real space and cyber space is being pursued to achieve these requirements. If CPS is realized, material exchanges in real space will be reproduced in the form of digital data in cyber space. In the current IoT environment, information is aggregated in a large-scale data center for processing and analysis. However, in order to realize CPS in conventional datacenters, it is necessary to enable communication with lower latency and higher reliability than present, and to be able to process a larger amount of data.

To overcome the present technical issues, edge computing installed in the μ-DCs close to end users is being developed, and it is possible to reduce the processing latency. In addition, it is also possible to reduce the load by sending only the necessary data to a large-scale data center while processing other data at high speed on the edge side. This kind of platform is called edge/cloud computing.

On the other hand, there is a high possibility that the processing capacity at the edge will be insufficient, and by linking μ-DCs in space and by aggregating resources in parallel with multi-core fibers (MCF), unused computing resources would be shared and utilization efficiency would be enhanced with low latency.
In this research, I will examine the effectiveness of edge linkage by using MCF connection to optical switching technology.

In today's report, I will explain characterization of switches using an optical module and the plan for demonstrating the effectiveness of collision avoidance with space division multiplexing.

= introduction

IoTの発展、普及に伴い社会システムの効率化、新産業の創出、知的生産性の向上などが求められ現実空間とサイバー空間が一体化したCyber-physical System(CPS)の世界が必要とされている。CPSが実現すれば現実空間における物質的なやり取りが、サイバー空間においてデジタルデータの形で再現されるようになっていく。こうした膨大なデジタルデータをAI等の活用により解析することで、現実空間の状況把握が随時可能となるだけでなく、その情報を元に行動の判断を行うことができる。
現在のIoTでは大規模データセンターに情報を集約して処理、解析を行っているが、CPSを実現するためには、より低遅延で信頼度の高い通信を可能にし、今以上に大容量のデータ処理が可能になる必要がある。そこで大規模なデータセンターよりも物理的に近いネットワークの端部(エッジ)にある小規模なエッジコンピューティングを持つマイクロデータセンター(μ-DC)を多数用意し、処理を分散して行う技術の研究開発が進められている。このコンピューティング基盤では、エッジ側で高速に処理を行いつつ必要なデータのみを大規模データセンターに送ることで、負荷を軽減し処理遅延を低減することが可能である。このようなエッジとクラウド全体のコンピューティング基盤を、以下エッジ／クラウドコンピューティング基盤と呼ぶ。

一方エッジ／クラウドコンピューティング基盤におけるμ-DCはユーザー近くに配置する都合上システムの大きさや搭載できるリソースに限りがあるため各μ-DCのリソース利用効率を高めることは難しく、エッジでの処理能力が不足する可能性が高い。この問題を解決するために、データを多重化してμ-DC間を連携し大容量通信を行うことが考えられるが、時間分割多重では送信・受信においてそれぞれ多重・分離の処理と遅延がかかり、波長多重はその課題を解決可能であるものの多くの波長を制御しなければいけない。一方、μ-DC間をマルチコアファイバー(MCF)で空間並列的に連携する場合には、その課題を解決しつつファイバの数の増加も避けられ、使用されていないコンピューティングリソースを共有し、利用効率を向上させることが期待できる。しかしながら、MCF接続光スイッチング技術によるエッジ連携の有効性を検証した例はなく、CPUやGPU,ストレージなどの必要に応じたエッジ間連携、コア割り当てなども未検討である。
