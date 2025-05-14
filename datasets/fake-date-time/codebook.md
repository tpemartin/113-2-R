# Codebook for `fake_datetime_data.csv`

This dataset contains 100 randomly generated user events with timestamps and associated attributes.

| Variable Name | Class     | Description                                                |
|---------------|-----------|------------------------------------------------------------|
| datetime      | DateTime   | Timestamp of the user event, down to the minute, **timezone: Taiwan**            |
| user_id       | integer   | Unique identifier for a user (random ID from 1000–1999)    |
| action        | character | Type of user action: `login`, `logout`, `purchase`, `view`|
| device        | character | Device used: `mobile`, `desktop`, or `tablet`              |
| location      | character | City where the event occurred                              |
