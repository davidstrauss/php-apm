CREATE TABLE IF NOT EXISTS event (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ts INTEGER NOT NULL,
    type INTEGER NOT NULL,
    file TEXT NOT NULL,
    line INTEGER NOT NULL,
    message TEXT NOT NULL,
    backtrace BLOB NOT NULL,
    uri TEXT NOT NULL,
    host TEXT NOT NULL,
    ip INTEGER UNSIGNED NOT NULL,
    cookies TEXT NOT NULL,
    post_vars TEXT NOT NULL,
    referer TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS slow_request (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ts INTEGER NOT NULL,
    duration FLOAT NOT NULL,
    file TEXT NOT NULL
);
