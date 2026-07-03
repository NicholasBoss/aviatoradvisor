CREATE OR REPLACE SCHEMA airdata;

USE airdata;

CREATE OR REPLACE TABLE aircraft (
    aircraft_id SERIAL
    , reg_num CHARACTER VARYING NOT NULL
    , desc CHARACTER VARYING NOT NULL
    , type CHARACTER VARYING NOT NULL
    , owner CHARACTER VARYING NOT NULL
    , year INTEGER(4)
    , CONSTRAINT aircraft_pk PRIMARY KEY (aircraft_id)
);

CREATE OR REPLACE TABLE adsb_trace (
    at_id SERIAL
    , timestamp TIMESTAMPTZ NOT NULL
    , latitude CHARACTER VARYING NOT NULL
    , longitude CHARACTER VARYING NOT NULL
    , altitude_feet CHARACTER VARYING NOT NULL
    , groundspeed_knots CHARACTER VARYING NOT NULL
    , pos_is_stale CHARACTER VARYING NOT NULL
    , start_of_new_leg CHARACTER VARYING NOT NULL
    , vert_rate_is_geo CHARACTER VARYING NOT NULL
    , altitude_is_geo CHARACTER VARYING NOT NULL
    , vert_rate_fpm CHARACTER VARYING NOT NULL
    , type CHARACTER VARYING NOT NULL
    , geo_altitude CHARACTER VARYING NOT NULL
    , geo_vert_rate CHARACTER VARYING NOT NULL
    , indicated_airspeed_knots CHARACTER VARYING NOT NULL
    , roll_angle CHARACTER VARYING NOT NULL
    , aircraft_id INTEGER NOT NULL
    , CONSTRAINT at_pk PRIMARY KEY (at_id)
    , CONSTRAINT aircraft_fk 
        FOREIGN KEY (aircraft_id) 
        REFERENCES aircraft(aircraft_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);