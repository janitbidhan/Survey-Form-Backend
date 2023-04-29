CREATE TABLE survey
(
    id                  SERIAL PRIMARY KEY,
    first_name          VARCHAR   NOT NULL,
    last_name           VARCHAR   NOT NULL,
    street_address      VARCHAR   NOT NULL,
    city                VARCHAR   NOT NULL,
    state               VARCHAR   NOT NULL,
    zip                 VARCHAR   NOT NULL,
    telephone_number    VARCHAR   NOT NULL,
    email               VARCHAR   NOT NULL,
    date_of_survey      TIMESTAMP NOT NULL,
    liked_options       JSONB,
    interested_source   JSONB,
    recommend           VARCHAR   NOT NULL,
    additional_comments VARCHAR
);

INSERT INTO survey (first_name, last_name, street_address, city, state, zip, telephone_number, email, date_of_survey,
                    liked_options, interested_source, recommend, additional_comments)
VALUES ('John', 'Doe', '123 Main St', 'Anytown', 'CA', '12345', '555-1234', 'john.doe@gmu.edu', NOW(), '[
  "campus",
  "atmosphere"
]', '[
  "friends"
]', 'Very Likely', 'Great experience overall.');

INSERT INTO survey (first_name, last_name, street_address, city, state, zip, telephone_number, email, date_of_survey,
                    liked_options, interested_source, recommend, additional_comments)
VALUES ('Jane', 'Doe', '456 Elm St', 'Othertown', 'NY', '54321', '555-5678', 'jane.doe@gmu.edu', NOW(), '[
  "location",
  "dorm rooms"
]', '[
  "Internet"
]', 'Likely', 'Could use more parking.');

INSERT INTO survey (first_name, last_name, street_address, city, state, zip, telephone_number, email, date_of_survey,
                    liked_options, interested_source, recommend, additional_comments)
VALUES ('Bob', 'Smith', '789 Maple St', 'Somewhere', 'TX', '67890', '555-9012', 'bob.smith@gmu.edu', NOW(), '[
  "sports"
]', '[
  "television"
]', 'Unlikely', 'Didnt feel like the right fit.');

INSERT INTO survey (first_name, last_name, street_address, city, state, zip, telephone_number, email, date_of_survey,
                    liked_options, interested_source, recommend, additional_comments)
VALUES ('Josh', 'Smith', '789 Maple St', 'Somewhere', 'TX', '67890', '555-9012', 'josh.smith@gmu.edu', NOW(), '[
  "sports"
]', '[
  "television"
]', 'Unlikely', 'Didnt feel like the right fit.');

SELECT *
FROM survey;
