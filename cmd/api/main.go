package main

import (
	"fmt"
	"net/http"
	"github.com/gin-gonic/gin"
)

// TODO: Remove function, this is just to test that gin works
func getCivilian(c *gin.Context) {
	var civ Civilian = Civilian{
		Three: 1,
	}
	c.IndentedJSON(http.StatusOK, civ);
}

func main() {
	router := gin.Default()
	router.GET("/civilian", getCivilian)

	const host string = "localhost:8080";

	router.Run(host)
	fmt.Printf("Running on %q\n", host)
}
