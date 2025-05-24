CREATE DATABASE IF NOT EXISTS world_layoffs;

SELECT * FROM layoffs;

CREATE TABLE layoffs_staging
LIKE layoffs;

INSERT layoffs_staging
SELECT * FROM layoffs;