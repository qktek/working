use mfdc3000
go

select top 500
ar_type,bill_type,fa_no,inv_no,inv_date,curcy,tax_rate,desc1,bill_date,ac_no,sale_mny,tax_paid,out_date,ap_user,wf_mark,wf_date,wf_note
from ac_rec_tran
where inv_no='1C23TMP006214'
order by fa_no,desc1,bill_date



update ac_rec_tran
set wf_mark=''
where inv_no='1C23TMP006214'