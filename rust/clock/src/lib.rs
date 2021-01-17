use chrono::{Duration, NaiveTime, Timelike};
use std::fmt;

#[derive(Debug, PartialEq, Eq)]
pub struct Clock {
    time: NaiveTime,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        let (offset_hours, minutes) = normalize(minutes, (0, 60));
        let (_, hours) = normalize(hours + offset_hours, (0, 24));
        Clock {
            time: NaiveTime::from_hms(hours as u32, minutes as u32, 0),
        }
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        let time = self.time + Duration::minutes(minutes as i64);
        Clock { time }
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:#02}:{:#02}", self.time.hour(), self.time.minute())
    }
}

fn normalize(n: i32, bounds: (i32, i32)) -> (i32, i32) {
    let (lower, upper) = bounds;
    let mut carry = 0;
    let mut n = n;
    while n < lower {
        n += upper;
        carry -= 1;
    }
    while n >= upper {
        n -= upper;
        carry += 1;
    }
    (carry, n)
}
