@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Add Student</div>

                    <div class="card-body">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <form action="{{ route('students.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="student_name">Student Name</label>
                                <input type="text" class="form-control" id="student_name" name="student_name" value="{{ old('student_name') }}" required>
                            </div>

                            <div class="form-group">
                                <label for="class_teacher_id">Class Teacher</label>
                                <select class="form-control" id="class_teacher_id" name="class_teacher_id" required>
                                    @foreach ($teachers as $teacher)
                                        <option value="{{ $teacher->id }}">{{ $teacher->teacher_name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="class">Class</label>
                                <input type="text" class="form-control" id="class" name="class" value="{{ old('class') }}" required>
                            </div>

                            <div class="form-group">
                                <label for="admission_date">Admission Date</label>
                                <input type="date" class="form-control" id="admission_date" name="admission_date" value="{{ old('admission_date') }}" required>
                            </div>

                            <div class="form-group">
                                <label for="yearly_fees">Yearly Fees</label>
                                <input type="number" class="form-control" id="yearly_fees" name="yearly_fees" value="{{ old('yearly_fees') }}" required>
                            </div>

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
