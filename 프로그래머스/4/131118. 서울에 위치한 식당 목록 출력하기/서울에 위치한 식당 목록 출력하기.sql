-- 코드를 입력하세요
SELECT i.REST_ID ,REST_NAME, FOOD_TYPE, 
    FAVORITES, ADDRESS, round(avg(r.REVIEW_SCORE),2) as SCORE
from REST_INFO i
join REST_REVIEW r
on i.REST_ID=r.REST_ID
where  i.ADDRESS like '서울%'
GROUP BY i.REST_ID
order by SCORE desc , FAVORITES desc