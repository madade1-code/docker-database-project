INSERT INTO users (name, email, role) VALUES
('John Smith', 'john@umbc.edu', 'member'),
('Sarah Johnson', 'sarah@umbc.edu', 'member'),
('Michael Brown', 'michael@umbc.edu', 'officer');

INSERT INTO events (event_name, event_date, event_location, created_by) VALUES
('Welcome Event', '2026-04-10', 'Student Center', 3),
('Networking Night', '2026-04-20', 'Library Hall', 3);

INSERT INTO rsvps (user_id, event_id, rsvp_status) VALUES
(1, 1, 'Going'),
(2, 1, 'Going'),
(1, 2, 'Maybe');

INSERT INTO attendance (user_id, event_id, attended) VALUES
(1, 1, TRUE),
(2, 1, TRUE);