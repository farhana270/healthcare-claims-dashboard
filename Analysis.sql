--Analysis
--cost_by_condition
SELECT 
    medical_condition,
    ROUND(AVG(billing_amount)::numeric, 2) AS avg_cost
FROM claims
GROUP BY medical_condition
ORDER BY avg_cost DESC;

--age_band analysis
SELECT 
    CASE 
        WHEN p.age < 30 THEN '0-30'
        WHEN p.age BETWEEN 30 AND 60 THEN '30-60'
        ELSE '60+'
    END AS age_band,
    ROUND(AVG(c.billing_amount)::numeric, 2) AS avg_cost
FROM claims c
JOIN patients p ON c.patient_id = p.patient_id
GROUP BY age_band;

--Revenue Analysis
SELECT 
    h.hospital,
    ROUND(SUM(c.billing_amount)::numeric,2) AS total_revenue
FROM claims c
JOIN hospitals h ON c.hospital_id = h.hospital_id
GROUP BY h.hospital
ORDER BY total_revenue DESC;

--readmission rate
SELECT 
    ROUND(AVG(readmission_flag) * 100, 2) AS readmission_rate
FROM claims;
	