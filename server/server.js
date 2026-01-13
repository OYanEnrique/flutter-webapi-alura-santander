const jsonServer = require('json-server');
const auth = require('json-server-auth');
const config = require('./server.config');
const server = jsonServer.create();
const router = jsonServer.router('db.json');
const middlewares = jsonServer.defaults();
const routes = require('./routes.json');

// Bind the router db to the app
server.db = router.db;

// Use default middlewares (logger, static, cors and no-cache)
server.use(middlewares);

// Apply custom routes
server.use(jsonServer.rewriter(routes));

// Configure auth rules - protect journals endpoint
server.use((req, res, next) => {
  if (req.path.includes('/journals')) {
    // All methods require auth
    const auth = req.headers.authorization;
    if (!auth) {
      return res.status(401).json({ error: 'Authorization header required' });
    }
  }
  next();
});

// Use json-server-auth
server.use(auth);
server.use(router);

const { port, host } = config;

server.listen(port, host, () => {
  console.log(`JSON Server with Auth is running on http://${host}:${port}`);
});
