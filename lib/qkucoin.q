\d .kucoin

CODE_INIT:200000
bls:`TRUE`FALSE

/ init check for remote API connection
chck:{ 
  tmsp:.j.k .Q.hg`:https://api.kucoin.com/api/v1/timestamp;  
  code:"J"$tmsp[`code]; 
  =[code;CODE_INIT] 
 }

getAllTickers:{
  c:.j.k .Q.hg`:https://api.kucoin.com/api/v1/market/allTickers;
  code:"J"$c`code;
  =[code;CODE_INIT];
  d:select data`ticker from c;
  r:d[`x]; 
  r
 }


\d .
// eof