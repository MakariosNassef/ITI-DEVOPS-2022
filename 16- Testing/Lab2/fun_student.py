def evaluate_student_score(score):
    if score < 0:
        return "Invalid"
    elif 0 <= score < 50:
        return "Failed"
    elif 50 <= score < 65:
        return "Passed"
    elif 65 <= score < 75:
        return "Good"
    elif 75 <= score < 85:
        return "V.Good"
    elif 85 <= score <= 100:
        return "Excellent"
    else:
        return "Invalid"