SELECT ch.id, ch.name, cc.card, t.date, COUNT(t.id) FROM transaction AS t
LEFT JOIN credit_card AS cc ON cc.card = t.card
LEFT JOIN card_holder AS ch ON ch.id = cc.cardholder_id
WHERE t.amount < 2
GROUP BY ch.id, ch.name, cc.card, t.date