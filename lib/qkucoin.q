\d .kucoin

CODE_INIT:200000
bls:`TRUE`FALSE

input:{1"> "; x:read0 0}
deb:{string[.z.p]," ### DEBUG ### ",x}
out:{string[.z.p]," ### INFO ### ",x}
err:{string[.z.p]," ### ERROR ### ",x}

/ init check for remote API connection
chck:{ 
  tmsp:.j.k .Q.hg`:https://api.kucoin.com/api/v1/timestamp;  
  code:"J"$tmsp[`code]; 
  =[code;CODE_INIT] 
 }

getAllTickers:{
  c:.j.k .Q.hg`:https://api.kucoin.com/api/v1/market/allTickers;
  code:"J"$c`code; =[code;CODE_INIT];
  d:select data`ticker from c; r:d[`x]; r
 }

getStatus:{
  a:.j.k .Q.hg`:https://api.kucoin.com/api/v1/status;
  t:select data from a;
  ~[t[`data]`status;"open"]
 }

getL1Data:{[sym]
  t:.j.k .Q.hg `$":https://api.kucoin.com/api/v1/market/orderbook/level1?symbol=",sym;
  u:select data from t; u[`data]
 }

getL2Data:{[sym]
  
 }
\d .
// eof