package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()

	r.GET("/ping", func(c *gin.Context) {
		namespace := os.Getenv("NAMESPACE")
		if namespace != "" {
			c.String(200, "pong from %s", namespace)
		} else {
			c.String(200, "pong")
		}
	})

	r.Run() // listen and serve on 0.0.0.0:8080 (default)
}
