---
layout: archive
title: ""
permalink: /datasets/
author_profile: true
redirect_from:
  - /datasets
---

{% include base_path %}


## Dataset Repositories

| Name                                                                                       | Type                                   | Collected by             |
|--------------------------------------------------------------------------------------------|----------------------------------------|--------------------------|
|[SNAP](http://snap.stanford.edu/data/index.html)                                            |Graphs & Networks                       | Stanford                 |
|[LAW](http://law.di.unimi.it/datasets.php)                                                  |Graphs & Networks                       | UNIMI                    |
|[BioSNAP](http://snap.stanford.edu/biodata/index.html)                                      |Biomedical Networks                     | Stanford                 |
|[KONECT](http://konect.cc/networks/)                                                        |Graphs & Networks                       | Jérôme Kunegis           |
|[Aminer](https://www.aminer.cn/data/)                                                       |Academic Networks                       | AMiner                   |
|[Open Academic Graph](https://www.microsoft.com/en-us/research/project/open-academic-graph/)|Academic Networks                       | Microsoft                |
|[Open Graph Benchmark](https://ogb.stanford.edu/)                                           |Graphs & Networks                       | Stanford                 |
|[TuDatasets](https://chrsmrrs.github.io/datasets/)                                          |Graphs & Networks                       | Christopher Morris, etc. |
|[StreamingGraphs](https://eecs.wsu.edu/~yyao/StreamingGraphs.html)                          |Streaming Graphs                        | Yibo Yao                 |
|[ARB](https://www.cs.cornell.edu/~arb/data/)                                                |Graphs & Networks                       | Austin R. Benson         |
|[SuiteSparse Matrix Collection](https://sparse.tamu.edu/)                                   |Matrix/Graphs                           | TAMU                     |
|[Web Data Commons](http://webdatacommons.org/)                                              |Hyperlink Graphs/Web Tables/RDFa        | University of Mannheim   |
|[Yahoo Webscope Datasets](https://webscope.sandbox.yahoo.com/#datasets)                     |Graphs/Ratings/Languages/Advertising    | Yahoo                    |
|[UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets.php)              |Multivariate/Text/Time-Series           | UCI                      |
|[Yelp Open Dataset](https://www.yelp.com/dataset)                                           |businesses/reviews/user data            | Yelp                     |
|[Recommender Systems Datasets](https://cseweb.ucsd.edu/~jmcauley/datasets.html)             |graphs/interactions/reviews/ratings     | UCSD                     |
|[MIcrosoft News Dataset](https://msnews.github.io/)                                         |user behavior logs                      | Microsoft                |
|[Search Query Logs](https://jeffhuang.com/search_query_logs/)                               |query logs                              | Jeff Huang               |
|[AOL DS](http://www.ccc.ipt.pt/~ricardo/experiments/AOL_DS.html)                            |query logs                              | Ricardo Campos           |


## Datasets Used in My Research

#### Plain Graphs

| Name    | #nodes    | #edges    | #labels | Type        | URL       | 
|-------  |---------  |---------  |---------|-----------  |---------  |
| Youtube | 1,138,499   | 2,990,443   | 47      | undirected  | [[raw]](http://socialcomputing.asu.edu/datasets/YouTube2) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EYx1SQKNTStFisTBIHAMNDQBOnsPGF1wtlhKsMZcUF5-ZQ?e=gF7kqc) | 
| TWeibo  | 2,320,895   | 50,655,143  | 100     | directed    | [[raw]](https://www.kaggle.com/c/kddcup2012-track1) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EcBcQ96ABnJJjLOObzmsgfgBwgn4V20mjjpbApTWECcjVw?e=goYD9m) |
| Orkut   | 3,072,441   | 117,185,084 | 100     | undirected  | [[raw]](http://snap.stanford.edu/data/com-Orkut.html) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EUwDCmNkRKlAuhKXwgyLWy4BQhk4bP1Eam-TCr0A4_fM6A?e=9nxc6V) |
|In-2004  | 1,382,908 | 16,539,643|    -    |   directed  |  [[raw]](http://law.di.unimi.it/webdata/in-2004/)  [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EXAuUS138GROsR9Clh_pelsBdz-_w3Ko1sUSkylIV4SrTA?e=itRfgd) | 
|DBLP     | 5,425,963 | 17,298,032|    -    |   undirected|  [[raw]](http://konect.uni-koblenz.de/networks/dblp-author)  [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EXhBD4ZnAtNKgta9Bo9BflsBv3OYifeS30wz7_hqoRIK1Q?e=Wt3VXM)        | 
|Pokec    | 1,632,803 | 30,622,564|    -    |   directed  |  [[raw]](http://snap.stanford.edu/data/soc-Pokec.html)  [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/ER6XCy95vulLjZSom4Rp80oBbjobi21fPk4Lua1ITDEUiQ?e=UWqWwX)        | 
|LiveJournal  | 4,847,571 | 68,475,391 |  -    |  directed  |  [[raw]](http://snap.stanford.edu/data/soc-LiveJournal1.html) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/ERyfJgiGYDdKgct_aKXCfBMBcjGhwnPhcLWx-h7PAnZzWQ?e=tbqcOo)         | 
|IT-2004  | 41,291,594  | 1,135,718,909  |   -      |  directed  |  [[raw]](http://law.di.unimi.it/webdata/it-2004/) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EUmrLB0HMY9LpqqUYpagRW8B6o-Bd7aqXLuGlM_3TQQkzw?e=GMOKCg)| 
|Twitter  | 41,652,230  | 1,468,365,182|    -    | directed    | [[raw]](http://law.di.unimi.it/webdata/twitter-2010/) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EWTupqJC5f5Igfo9IzVVYhUBOW5QRVupCOjgDY6B_Qx8WA?e=mndw7n)|
|Friendster | 65,608,366  | 1,806,067,135 |   -  |  undirected  | [[raw]](https://snap.stanford.edu/data/com-Friendster.html) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/Eau8YKjiYCxCrUGKDmAgqL0Btvh-Z0L8pUzX_CtF8YWHYg?e=AcKivU) |
|UK-2007 | 105,896,555 | 3,738,733,648|    -    |   directed  |  [[raw]](http://law.di.unimi.it/webdata/uk-2007-05/)[[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EQNu-RvrM7dJvtAYwBCoqE4B8T_OiVbDK2_T0UguEkolqw?e=MapN3O)       | 
|UK-union | 133,633,040 | 5,475,109,924|    -    |   directed  |  [[raw]](http://law.di.unimi.it/webdata/uk-union-2006-06-2007-05/)  [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/ET1k94-vZ1lGoMWYkbrD6V0BnUWoNHHJLA7vTdyizFLIhg?e=2puQFl)        | 
|ClueWeb12| 978,408,098 | 42,574,107,469 | - | directed | [[raw]](http://law.di.unimi.it/webdata/clueweb12/) |
|ClueWeb09| 1,684,868,322| 7,939,635,651|    -    |  directed  |   [[raw]](http://www.lemurproject.org/clueweb09.php/)    [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EUYDatK-RSFFiWO8JPHuIlUBbLsNJLMeBg9qJ-lnCYc7IQ?e=Usvx0W)     | 

Welcome to cite our paper if you publish results based on our preprocessed datasets.
```bib
@article{yang13homogeneous,
  title={Homogeneous Network Embedding for Massive Graphs via Reweighted Personalized PageRank},
  author={Yang, Renchi and Shi, Jieming and Xiao, Xiaokui and Yang, Yin and Bhowmick, Sourav S},
  journal={Proceedings of the VLDB Endowment},
  volume={13},
  number={5}
}

@article{shi13realtime,
  title={Realtime Index-Free Single Source SimRank Processing on Web-Scale Graphs},
  author={Shi, Jieming and Jin, Tianyuan and Yang, Renchi and Xiao, Xiaokui and Yang, Yin},
  journal={Proceedings of the VLDB Endowment},
  volume={13},
  number={7}
}
```

#### Attributed Graphs

| Name  | Type      | #nodes    | #edges | #attributes  | #labels | URL       | 
|-------  |---------  |---------  |---------|-----------  |---------  |---------  |
|Wiki |directed|2405|17981|4973| 19| [[raw]](https://github.com/thunlp/TADW/tree/master/wiki) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EU-n67xk9gFGuTbgbHswii0B3PjH9Xz4YFifnQ196iHtqg?e=42T6Zp)|
|Cora | directed|2708|5429|1433| 7| [[raw]](https://linqs.soe.ucsc.edu/data) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/ER1cnb_VlYtPstBWirOoMoQB9fvY8RoTiBn_VZfjVrnI3g?e=O4DYWY)|
|Citeseer| directed|3312|4660|3703| 6| [[raw]](https://linqs.soe.ucsc.edu/data) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/ERn9ynzUcfxGrWj2M_6EzqMBIA64TOUdF5uJOyQvTi2TFQ?e=pGIQHA)|
|Pubmed| directed|19717|44338|500| 3| [[raw]](https://linqs.soe.ucsc.edu/data) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EU13QlSlzXdAvCXUKEYq1BsB2pTkjyKK4IghJOSXuOFkzg?e=igl07Y)|
|BlogCatalog| undirected|5196|343486| 8189| 6| [[raw]](https://github.com/mengzaiqiao/CAN/tree/master/data) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/Ed9XWHRIruRDikUse1D-D9IB4vEayDs5xuE4nJekLZA-rg?e=DUuI7e)|
|PPI| undirected|56944|818716|50| 121| [[raw]](http://snap.stanford.edu/graphsage/) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EYqj6SR_CGNMl0GBZ9BHZ10BcjeckqYS3nctG5HGw1ZeGA?e=4kTuLJ)|
|Reddit| undirected|232965|11606919|300| 41| [[raw]](http://snap.stanford.edu/graphsage/) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EcmYJmOofphJndh-yH94uNwBcyF64PBEvMilVkRpWmcoyQ?e=dJkZxW)|
|Flickr| undirected|7575|479476|12047| 9| [[raw]](https://github.com/mengzaiqiao/CAN/tree/master/data) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EXwv_B9irkdBjMz8VEYSfIMBP5mSTeB5KHHnwT-84hiLng?e=RLLjvV)|
|Facebook| undirected|4039|88234|1283| 193| [[raw]](https://snap.stanford.edu/data/ego-Facebook.html) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EQPjxHOD_kpLi5cwcg-2SCMBC31sErAvA-MsfUM9DZ_YeA?e=EBhEQf)|
|Twitter| directed|81306|1768149|216839| 4065| [[raw]](https://snap.stanford.edu/data/ego-Twitter.html) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EUagcO8-BfJMqH-DC7TNbFYBDlVytGf-DdsXuBi-pompdA?e=ZXEIJW)|
|Google+| directed|107614|13673453|15907| 468| [[raw]](https://snap.stanford.edu/data/ego-Gplus.html) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EQ_lIucwnGdPntVe99lMA2wBmw1SjG0kXimpshPk1XVODg?e=DGLU7T)|
|TWeibo| directed| 2320895| 50655143| 1657| 8| [[raw]](https://www.kaggle.com/c/kddcup2012-track1) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/ESvFmWs048tBgxT9elyMM6oBWE1UIU96llcvnx7vpmJNaA?e=IOSGYJ)|
|MAG| directed| 59249719| 978147253| 2000| 100| [[raw]](http://ma-graph.org/rdf-dumps/) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/Ed8ilrixkCdBmkUX0tpoK5sB5i6sApgbDcIB-ngGOJ16jg?e=PTweAn)|
|MAG-SC| directed|10541560| 265219994 |2784240 | 8 | [[raw]](https://figshare.com/articles/dataset/mag_scholar/12696653) [[preprocessed]](https://entuedu-my.sharepoint.com/:u:/g/personal/yang0461_e_ntu_edu_sg/EclMYCsgJRpEsKP5mzKFksoBc4UlRtqn62tpCI65VcbaLA?e=ff2sYq)|

Tips: node attributes in our preprocessed datasets are compressed as "attrs.pkl" file via cPickle package in Python 2.7 or "attrs.npz" file, which can be loaded as a sparse attribute matrix by using the following code
```python
import cPickle as pickle
features = pickle.load(open("attrs.pkl"))
```
or
```python
from scipy import sparse
features = sparse.load_npz("attrs.npz")
```
Welcome to cite our paper if you publish results based on our preprocessed datasets.
```bib
@article{yang2020scaling,
  title={Scaling Attributed Network Embedding to Massive Graphs},
  author={Yang, Renchi and Shi, Jieming and Xiao, Xiaokui and Yang, Yin and Liu, Juncheng and Bhowmick, Sourav S},
  journal={Proceedings of the VLDB Endowment},
  volume={14},
  number={1},
  pages={37--49},
  year={2021},
  publisher={VLDB Endowment}
}
```