library ieee;
use ieee.std_logic_1164.all;

entity eSurucu is
  port(giris : in std_logic_vector(4 downto 0);
       s: in std_logic;
       istasyon : out std_logic;
       yemek : out std_logic;
       otel : out std_logic;
       elliM : out std_logic;
       yuzM : out std_logic);
     end eSurucu;
     
     architecture behv of eSurucu is
       type tDurumlar is ( bsl, y, yi, o, yio, i, elli_mY, yuz_mY, elli_mYi, yuz_mYi, elli_mO, yuz_mO, elli_mYio, yuz_mYio, elli_mI, yuz_mI, elli_mBsl, yuz_mBsl, hata);
         signal dSimdi : tDurumlar := bsl; --ilk durum
         begin
         process (s)
           begin
             if(rising_edge(s)) then
             case dSimdi is
             when bsl=>
               if(giris= "00110") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '1';
               dSimdi <= yuz_mY;
             elsif(giris="00111") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mY;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when yuz_mY=>
             if(giris="00111") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mY;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when elli_mY=>
             if(giris="00001") then
               istasyon <= '0';
               yemek <= '1';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= y;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
             when y=>
               if(giris= "01000") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '1';
               dSimdi <= yuz_mYi;
             elsif(giris="01001") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mYi;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when yuz_mYi=>
             if(giris="01001") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mYi;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when elli_mYi=>
             if(giris="00010") then
               istasyon <= '1';
               yemek <= '1';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= yi;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
             when yi=>
               if(giris= "01010") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '1';
               dSimdi <= yuz_mO;
             elsif(giris="01011") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mO;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when yuz_mO=>
             if(giris="01011") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mO;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when elli_mO=>
             if(giris="000011") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '1';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= o;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when o=>
               if(giris= "01100") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '1';
               dSimdi <= yuz_mYio;
             elsif(giris="01101") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mYio;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when yuz_mYio=>
             if(giris="01101") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mYio;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when elli_mYio=>
             if(giris="00100") then
               istasyon <= '1';
               yemek <= '1';
               otel <= '1';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= yio;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
            when yio=>
               if(giris= "01110") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '1';
               dSimdi <= yuz_mI;
             elsif(giris="01111") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mI;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when yuz_mI=>
             if(giris="01111") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mI;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when elli_mI=>
             if(giris="00101") then
               istasyon <= '1';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= i;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when i=>
               if(giris= "10000") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '1';
               dSimdi <= yuz_mBsl;
             elsif(giris="10001") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mBsl;
             else
               istasyon  <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when yuz_mBsl=>
             if(giris="10001") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '1';
               yuzM <= '0';
               dSimdi <= elli_mBsl;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when elli_mBsl=>
             if(giris="00000") then
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= bsl;
             else
               istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
               dSimdi <= hata;
             end if;
           when hata=>
              istasyon <= '0';
               yemek <= '0';
               otel <= '0';
               elliM <= '0';
               yuzM <= '0';
           end case;
         end if;
         end process;
       end behv;
