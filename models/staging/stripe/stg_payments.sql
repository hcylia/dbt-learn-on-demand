select
    id as payment_id,
    orderid as order_id,
    paymentmethod,
    status,
    amount / 100 as amount,
    _batched_at

from 
    {{ source('stripe', 'payment') }}