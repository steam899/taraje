--[============================================================[                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                     
  `RW`  = Read-Write (editable) variable                                                                                                                                                                                                                             
  `RO`  = Read-Only variable                                                                                                                                                                                                                                         
  `>>>` = Example usage                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                     
**** variables                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                     
  ** Stake                                                                                                                                                                                                                                                           
      apikey             : string : RW  [required]                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                     
      mirror             : string : RW  [optional]                                                                                                                                                                                                                   
      cookie             : string : RW  [optional]                                                                                                                                                                                                                   
      user_agent         : string : RW  [optional]                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                     
  basebet            : float  : RW  [required]                                                                                                                                                                                                                       
  currency           : string : RW  [required]                                                                                                                                                                                                                       
  nextbet            : float  : RW  [required]                                                                                                                                                                                                                       
  target             :        : RW  [required]                                                                                                                                                                                                                       
                    ** float (single target),                                                                                                                                                                                                                        
                       >>> target = 37.89                                                                                                                                                                                                                            
                    ** table (random target between low-high),                                                                                                                                                                                                       
                       >>> target = {low = 37, high = 37.89}                                                                                                                                                                                                         
                    ** or, you can retrieve them using dot (.) notation.                                                                                                                                                                                             
                       >>> target.low                                                                                                                                                                                                                                
                       >>> target.high                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                     
               **NOTE: you must fill this variable with MULTIPLIER-TARGET, not WIN-CHANCE!!                                                                                                                                                                          
                       ** If you want to use chance, I have made an example function to convert chance to target. You can find it below.                                                                                                                             
                                                                                                                                                                                                                                                                     
  maxbet             : float  : RW  [optional]                                                                                                                                                                                                                       
  replay             : bool   : RW  [optional, default: false]                                                                                                                                                                                                       
  resetIfLose        : float  : RW  [optional]                                                                                                                                                                                                                       
  resetIfProfit      : float  : RW  [optional]                                                                                                                                                                                                                       
  resetIfLoseStreak  : int    : RW  [optional]                                                                                                                                                                                                                       
  resetIfWinStreak   : int    : RW  [optional]                                                                                                                                                                                                                       
  targetBalance      : float  : RW  [optional]                                                                                                                                                                                                                       
  targetLose         : float  : RW  [optional]                                                                                                                                                                                                                       
  targetProfit       : float  : RW  [optional]                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                     
  balance            : float  : RO                                                                                                                                                                                                                                   
  bets               : int    : RO                                                                                                                                                                                                                                   
  broker             : string : RO : broker-name                                                                                                                                                                                                                     
  currentstreak      : int    : RO                                                                                                                                                                                                                                   
                    ** currentstreak is a positive or negative integer. Will be positive when you `win` and negative when you `lose`.                                                                                                                                
                                                                                                                                                                                                                                                                     
  lastBet            : table  : RO                                                                                                                                                                                                                                   
                    ** This is an object containing more details about the previous bet, including:                                                                                                                                                                  
                       ** amount    : float  :                                                                                                                                                                                                                       
                       ** target    : float  :                                                                                                                                                                                                                       
                       ** profit    : float  : profit for the last bet made. This is not the total profit (betting 1 unit at x2 payout, when winning, profit will show 1 (returned = 2), when losing, profit will show -1).                                          
                       ** result    : float  : lucky number                                                                                                                                                                                                          
                    ** you can retrieve them using dot (.) notation.                                                                                                                                                                                                 
                       >>> lastBet.target                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                     
  losses             : int    : RO                                                                                                                                                                                                                                   
  previousbet        : float  : RO                                                                                                                                                                                                                                   
  profit             : float  : RO                                                                                                                                                                                                                                   
  win                : bool   : RO                                                                                                                                                                                                                                   
  wins               : int    : RO                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                     
  isFirstGreen              : bool : RO                                                                                                                                                                                                                              
  isFirstRed                : bool : RO                                                                                                                                                                                                                              
  isMaxBetReached           : bool : RO                                                                                                                                                                                                                              
  isResetWinStreakReached   : bool : RO                                                                                                                                                                                                                              
  isResetLoseStreakReached  : bool : RO                                                                                                                                                                                                                              
  isResetProfitReached      : bool : RO                                                                                                                                                                                                                              
  isResetLossReached        : bool : RO                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                     
**** functions                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                     
  dobet()              : your logic here                                                                                                                                                                                                                             
  stop()               : kill the bot                                                                                                                                                                                                                                
  resetseed(seed)      :                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                     
             ** resetseed require `seed` parameter, if seed is not specified, the bot will automatically generate a random seed for you.                                                                                                                             
                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                     
--]============================================================]                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                     
--[=============[                                                                                                                                                                                                                                                    
     EXAMPLE!!                                                                                                                                                                                                                                                       
--]=============]                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                     
function chance_to_target(chance)                                                                                                                                                                                                                                    
    if broker:lower() == "stake" then                                                                                                                                                                                                                                
        div = 99                                                                                                                                                                                                                                                     
    elseif broker:lower() == "pasino" then                                                                                                                                                                                                                           
        div = 97                                                                                                                                                                                                                                                     
    end                                                                                                                                                                                                                                                              
    return tonumber(string.format("%.2f", (div/chance)))                                                                                                                                                                                                             
end                                                                                                                                                                                                                                                                  
-- call this function with `chance_to_target(your_chance)`. e.g:                                                                                                                                                                                                     
-- target = chance_to_target(3.78)                                                                                                                                                                                                                                   
                                                                                                                                                                                                                                                                     
function fibonacci(level)                                                                                                                                                                                                                                            
    local _start, _next = 0, 1                                                                                                                                                                                                                                       
    if level <= 0 then                                                                                                                                                                                                                                               
        return basebet                                                                                                                                                                                                                                               
    end                                                                                                                                                                                                                                                              
    for i = 1, level do                                                                                                                                                                                                                                              
        _start, _next = _next, _start + _next                                                                                                                                                                                                                        
    end                                                                                                                                                                                                                                                              
    return _start * basebet                                                                                                                                                                                                                                          
end

apikey = "b7bc4e0b4a9ae7fad9b0630a9e34c45869f3b1816b25a4a90283390eb4ea7f9>
                                                                                                                            
currency = "usdt"                                                         
basebet = 0.00001000;
nextbet = 0.00001000;
bb = 0.00090000;
bb6 = 0.00900000;
pbet = 0.00090000;
pbet3 = 0.00900000;
pb3 = 1;
pb = 1;
pbb3 = 0;
pbb = 0;
nb = 0;
chance = 62;
profittarget = 10.008;

function dobet() {

if (balance >= profittarget)
stop();

if (pbb3 == 1)
pbb3 = 0;

if (pbb == 1)
pbb = 0;

if (win && chance == 38) {
pb3 = 1;
pbb3 = 1;
} else if (chance == 38 && pbb3 == 0) {
pb3 = 0;
}

if (win && chance == 62) {
pb = 1;
pbb = 1;
} else if (chance == 62 && pbb == 0){
pb = 0;
}

if (chance == 62 && pb == 0 ) {
pbet = pbet*3;
} else if (chance == 62 && pb == 1) {
pbet = bb6;
}

if (chance == 38 && pb3 == 0) {
pbet3 = pbet3*1.7;
} else if (chance == 38 && pb3 == 1) {
pbet3 = bb;
}

if (chance >= 62) {
chance = 38;
nb = 1;
bethigh = true;
} else {
chance = 62;
nb = 2;
bethigh = false;
}

if (nb == 1) {
nextbet = pbet3;
nb = 2;
} else if (nb == 2) {
nextbet = pbet;
nb = 1;
}

}