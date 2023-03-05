import unittest
import fun_student
import fun_car

# import class_student as st
# import class_car as car
# Unit tests
# using equivalent method

class Test_evaluate_student_score(unittest.TestCase):

    def setUp(self) -> None:
        print("Start new Function evaluate student class ")

    def tearDown(self) -> None:
        print("End Function evaluate_student class ")

    def test_evaluate_student_score_positive_cases(self):
        self.assertEqual(fun_student.evaluate_student_score(30), "Failed")
        self.assertEqual(fun_student.evaluate_student_score(60), "Passed")
        self.assertEqual(fun_student.evaluate_student_score(70), "Good")
        self.assertEqual(fun_student.evaluate_student_score(80), "V.Good")
        self.assertEqual(fun_student.evaluate_student_score(90), "Excellent")

    def test_evaluate_student_score_negative_cases(self):
        self.assertEqual(fun_student.evaluate_student_score(-10), "Invalid")
        self.assertEqual(fun_student.evaluate_student_score(120), "Invalid")


class Test_evaluate_car_speed(unittest.TestCase):
    def setUp(self) -> None:
        print("Start new Function evaluate car class ")

    def tearDown(self) -> None:
        print("End Function evaluate_car class ")


    def test_evaluate_car_speed_positive_cases(self):
        self.assertEqual(fun_car.evaluate_car_speed(20), "Low")
        self.assertEqual(fun_car.evaluate_car_speed(60), "Normal")
        self.assertEqual(fun_car.evaluate_car_speed(180), "High")
        self.assertEqual(fun_car.evaluate_car_speed(215), "V.High")

    def test_evaluate_car_speed_negative_cases(self):
        self.assertEqual(fun_car.evaluate_car_speed(-10), "Invalid")
        self.assertEqual(fun_car.evaluate_car_speed(300), "Invalid")

carspeed = unittest.TestSuite()
carspeed.addTest(Test_evaluate_car_speed())

studentScore = unittest.TestSuite()
studentScore.addTest(Test_evaluate_student_score())

if __name__ == '__main__':
    runner = unittest.TextTestRunner
    runner.run(carspeed)
    runner.run(studentScore)