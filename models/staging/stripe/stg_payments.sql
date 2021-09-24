select
    id as payment_id,
    orderid as order_id,
    paymentmethod,
    status,
    {{ cents_to_dollars('amount') }} as amount,
    _batched_at

from 
    {{ source('stripe', 'payment') }}