use chrono::{Duration, NaiveTime};
use std::fmt;

#[derive(Debug, PartialEq, Eq)]
pub struct Clock {
    time: NaiveTime,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        let time = NaiveTime::from_hms(0, 0, 0)
            + Duration::hours(hours as i64)
            + Duration::minutes(minutes as i64);
        Clock { time }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        let time = self.time + Duration::minutes(minutes as i64);
        Clock { time }
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        f.write_str(&self.time.format("%H:%M").to_string())
    }
}

