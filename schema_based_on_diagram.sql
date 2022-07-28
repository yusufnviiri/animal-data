createdb scm
CREATE TABLE patients(id INT PRIMARY KEY, name VARCHAR, date_of_birth DATE);
 CREATE TABLE medical_histories(id INT PRIMARY KEY, admitted_at TIMESTAMP,patient_id INT, status VARCHAR);
 CREATE TABLE treatments(id INT PRIMARY KEY,type VARCHAR ,name VARCHAR);
 CREATE TABLE invoices(id INT PRIMARY KEY,total_amount DECIMAL,generated_at TIMESTAMP,payed_at TIMESTAMP, medical_history_id INT);
 CREATE TABLE invoice_items(id INT PRIMARY KEY,unit_price DECIMAL,quantity INT,total_price DECIMAL,invoice_id INT, treatment_id INT);


-- adding foreign keys
ALTER TABLE medical_histories ADD FOREIGN KEY (patient_id) REFERENCES patients (id);
ALTER TABLE invoice_items ADD FOREIGN KEY (treatment_id) REFERENCES treatments(id););
ALTER TABLE invoice_items ADD FOREIGN KEY (invoice_id) REFERENCES invoices(id);
ALTER TABLE invoices ADD FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id);
ALTER TABLE treatments ADD FOREIGN KEY (id) REFERENCES medical_histories(id);


-- image link
https://drawsql.app/chiyiya/diagrams/microverse 