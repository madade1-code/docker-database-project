CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    role VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE events (
    event_id SERIAL PRIMARY KEY,
    event_name VARCHAR(150),
    event_date DATE,
    event_location VARCHAR(150),
    created_by INT REFERENCES users(user_id)
);

CREATE TABLE rsvps (
    rsvp_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    event_id INT REFERENCES events(event_id),
    rsvp_status VARCHAR(50)
);

CREATE TABLE attendance (
    attendance_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    event_id INT REFERENCES events(event_id),
    attended BOOLEAN
);