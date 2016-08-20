package app_test

import (
	"reflect"
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/TheBosonProject/Boson-Control-Server/app"
	logger "github.com/koushik-shetty/kgologger"
)

func TestNewContextCreatesNewContext(t *testing.T) {
	logger := logger.NewBlankLogger()

	context := app.NewContext(logger)

	assert.True(t, reflect.DeepEqual(context.Logger(), logger), "expected context to contain logger instance")
}
