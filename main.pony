use "sqlite3"

actor Main
  new create(env: Env) =>
    env.out.print("Started")
