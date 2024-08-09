@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Student Details</div>

                    <div class="card-body">
                        <div class="form-group">
                            <label for="student_name">Student Name</label>
                            <input type="text" class="form-control" id="student_name" name="student_name" value="{{ $student->student_name }}" disabled>
                        </div>

                        <div class="form-group">
                            <label for="class_teacher_id">Class Teacher</label>
                            <input type="text" class="form-control" id="class_teacher_id" name="class_teacher_id" value="{{ $student->teacher->teacher_name }}" disabled>
                        </div>

                        <div class="form-group">
                            <label for="class">Class</label>
                            <input type="text" class="form-control" id="class" name="class" value="{{ $student->class }}" disabled>
                        </div>

                        <div class="form-group">
                            <label for="admission_date">Admission Date</label>
                            <input type="date" class="form-control" id="admission_date" name="admission_date" value="{{ $student->admission_date }}" disabled>
                        </div>

                        <div class="form-group">
                            <label for="yearly_fees">Yearly Fees</label>
                            <input type="number" class="form-control" id="yearly_fees" name="yearly_fees" value="{{ $student->yearly_fees }}" disabled>
                        </div>

                        <a href="{{ route('students.index') }}" class="btn btn-primary">Back</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
