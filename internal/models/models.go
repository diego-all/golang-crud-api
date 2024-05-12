package models

import (
	"database/sql"
	"time"
)

const dbTimeout = time.Second * 3

var db *sql.DB

func New(dbPool *sql.DB) Models {
	db = dbPool
	return Models{
		Product:  Product{},
		Category: Category{},
	}
}

type Models struct {
	Product  Product
	Category Category
}
