-- Create schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS demande;

-- Create table if it doesn't exist
CREATE TABLE IF NOT EXISTS demande.certificat
(
    isValid  boolean,
    denomination_sociale_fr character varying COLLATE pg_catalog."default",
    denomination_sociale_ar character varying COLLATE pg_catalog."default",
    numCertificat character varying COLLATE pg_catalog."default"
);

-- Insert initial data
INSERT INTO demande.certificat (isValid, denomination_sociale_fr, denomination_sociale_ar, numCertificat)
VALUES 
    (true, 'Société Française', 'الشركة الفرنسية', 'CERT123'),
    (false, 'Société Anglaise', 'الشركة الإنجليزية', 'CERT124');
