package main

import (
	"net/http"

	"github.com/go-chi/chi"
)

func (app *application) routes() http.Handler {
	mux := chi.NewRouter()

	mux.Get("/health", app.Health)

	// Product
	mux.Post("/products", app.CreateProduct)
	mux.Get("/products/get/{id}", app.GetProduct)
	mux.Put("/products/update/{id}", app.UpdateProduct)
	//mux.Patch("/products/update/{id}", app.UpdateProduct)
	mux.Get("/products/all", app.AllProducts)
	mux.Delete("/products/delete/{id}", app.DeleteProduct)

	// Category
	mux.Post("/categories", app.CreateCategory)
	mux.Get("/categories/get/{id}", app.GetCategory)
	mux.Put("/categories/update/{id}", app.UpdateCategory)
	//mux.Patch("/products/update/{id}", app.UpdateProduct)
	mux.Get("/categories/all", app.AllCategories)
	mux.Delete("/categories/delete/{id}", app.DeleteCategory)

	return mux
}
