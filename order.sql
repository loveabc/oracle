select a.request_id,max(b.status_date),max(a.status_date),trunc(max(b.status_date))-trunc(max(a.status_date)) from test_part a
inner join(
SELECT REQUEST_ID, max(status_date) status_date from test_part group by request_id) b
on a.request_id=b.request_id and a.status_date<b.status_date
group by a.request_id
;
