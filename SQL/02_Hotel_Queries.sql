-- 1. Last booked room per user 
SELECT user_id, room_no
FROM (
    SELECT user_id, room_no, 
           ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY booking_date DESC) as rn
    FROM bookings
) t WHERE rn = 1;

-- 2. Nov 2021 Billing 
SELECT b.booking_id, SUM(bc.item_quantity * i.item_rate) AS total_billing
FROM bookings b
JOIN booking_commercials bc ON b.booking_id = bc.booking_id
JOIN items i ON bc.item_id = i.item_id
WHERE b.booking_date BETWEEN '2021-11-01' AND '2021-11-30 23:59:59'
GROUP BY b.booking_id;