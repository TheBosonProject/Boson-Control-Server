package app

import kgol "github.com/koushik-shetty/kgologger"

//Context is the application context. It contains fields required by the entire application
type Context struct {
	logger kgol.Loggable
}

//NewContext Creates a new application context
func NewContext(logger kgol.Loggable) *Context {
	context := &Context{
		logger: logger,
	}
	return context
}

//Logger returns the logger instance included in the context
func (c *Context) Logger() kgol.Loggable {
	return c.logger
}
