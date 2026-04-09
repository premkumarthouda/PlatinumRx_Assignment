def convert_minutes(minutes):
    """Converts minutes to human-readable hrs and minutes[cite: 41]."""
    hours = minutes // 60
    rem_minutes = minutes % 60
    return f"{hours} hrs {rem_minutes} minutes"

# Example [cite: 43]
print(convert_minutes(130)) # Output: 2 hrs 10 minutes