# InsiderTradingYTD
This project sets out to build a dashboard to analyze year-to-date insider trading of all stocks and industries. The first step was to web-scrap the data from openinsider and finviz using python and required libraries. Then we clean the data in the same python script using pandas library. After we used SQL to create a table of all trades. Ultimately we create a dashboard in Tableau.


Data Sources: 
            
              FinViz for general ticker info: https://finviz.com/screener.ashx 
              
              OpenInsider: http://openinsider.com/screener?s=&o=&pl=&ph=&ll=&lh=&fd=0&fdr=&td=365&tdr=&fdlyl=&fdlyh=&daysago=&xp=1&vl=50000&vh=&ocl=&och=&sic1=-1&sicl=100&sich=9999&grp=0&nfl=&nfh=&nil=&nih=&nol=&noh=&v2l=&v2h=&oc2l=&oc2h=&sortcol=0&cnt=1000&page=1
              
Note: Data included trades matched the following criteria
     1. A value of 50K+ were included 
     2. A Sale or Purchase
     3. Trade date after 01/01/2022
     
Link to dashboard: https://public.tableau.com/views/InsiderTradingYTDAnalysisAsof10_13_2022/InsiderAnalysisYTDAsof10_13_2022?:language=en-US&:display_count=n&:origin=viz_share_link
