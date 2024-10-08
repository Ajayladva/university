<?php

namespace Database\Factories;

use App\Models\Student;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

class StudentFactory extends Factory
{
    protected $model = Student::class;

    public function definition()
    {
        return [
            'student_name' => $this->faker->name,
            'class_teacher_id' => Teacher::factory(),
            'class' => $this->faker->randomElement(['A', 'B', 'C', 'D']),
            'admission_date' => $this->faker->date,
            'yearly_fees' => $this->faker->randomFloat(2, 1000, 5000),
        ];
    }
}
