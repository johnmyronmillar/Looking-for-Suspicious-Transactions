SELECT * FROM transaction as t 
FULL OUTER JOIN credit_card as cc ON t.card = cc.card 
INNER JOIN card_holder as ch ON ch.id = cc.id_card_holder
WHERE ch.id = 2 or ch.id = 18;

SELECT t.id, t.date, t.amount, cc.id_card_holder FROM transaction as t 
INNER JOIN credit_card as cc ON t.card = cc.card 
WHERE cc.id_card_holder = 2 or cc.id_card_holder = 18;

SELECT id, name, id_merchant_category FROM merchant
WHERE id = 640; 

SELECT t.id, t.date, t.amount, t.id_merchant, m.name, FROM transaction as t 
INNER JOIN merchant as m ON t.id_merchant = m.id 
WHERE t.id = 640;

SELECT t.id, t.date, t.amount, t.id_merchant, m.name FROM transaction as t 
INNER JOIN merchant as m ON t.id_merchant = m.id 
WHERE t.amount = 19.87 or t.amount = 19.55;
