# tools for Jetson Nano

```
git clone https://github.com/prosconsinc/jetson-nano.git
```

# Jetson Status  
Jetson Nanoのステータスを確認する  
https://www.fabshop.jp/jetson-nano-jtop/  

```
$ sudo jtop
```  
0.5秒ごとにデータが更新され, 視覚的にリアルタイムで負荷状況を確認できる.  
     
* <code>CPU1 ~ CPU4</code>  
クアッドコアのCPUであり, 各稼働状況が表示される.  

* <code>Mem</code>  
メモリの使用量でJetson nanoは4GB搭載していてそのうち何％使っているかが見れる.  

* <code>Swp</code>  
仮想メモリのような場所でデフォルトで２GBが設定されている.  

* <code>EMC</code>  
EMCは外部のメモリコントローラの仕様状況.  

* <code>GPU</code>  
GPUの使用量  

* <code>Dsk</code>  
ディスクの使用量  







