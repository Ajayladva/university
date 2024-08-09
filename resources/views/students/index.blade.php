@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row mb-3">
        <div class="col-md-12">
            <a href="{{ route('students.create') }}" class="btn btn-primary mb-2">Add New Student</a>

            <!-- Search Form -->
            <form method="GET" action="{{ route('students.index') }}" class="form-inline">
                <input class="form-control mr-sm-2" type="search" name="search" value="{{ request()->input('search') }}" placeholder="Search by name" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                <!-- Clear Search Button -->
                @if(request()->input('search'))
                    <a href="{{ route('students.index') }}" class="btn btn-outline-secondary my-2 my-sm-0 ml-2">Clear Search</a>
                @endif
            </form>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            <h4 class="mb-0">{{ __('Student List') }}</h4>
        </div>

        <div class="card-body">
            @if ($students->count())
                <table id="studentsTable" class="table table-striped table-bordered">
                    <thead class="thead-dark">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Admission Date</th>
                            <th>Yearly Fees</th>
                            <th>Class Teacher</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($students as $student)
                            <tr>
                                <td>{{ $student->id }}</td>
                                <td>{{ $student->student_name }}</td>
                                <td>{{ $student->class }}</td>
                                <td>{{ $student->admission_date }}</td>
                          
                                <td>${{ number_format($student->yearly_fees, 2) }}</td>
                                <td>{{ $student->teacher->teacher_name }}</td>
                                <td>
                                    <a href="{{ route('students.show', $student->id) }}" class="btn btn-info btn-sm">View</a>
                                    <a href="{{ route('students.edit', $student->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('students.destroy', $student->id) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>

                <!-- Pagination Links -->
                <div class="mt-3">
                    {{ $students->appends(['query' => request()->input('query')])->links('pagination::bootstrap-4') }}
                </div>
            @else
                <div class="alert alert-warning" role="alert">
                    No students found.
                </div>
            @endif
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    $(document).ready(function() {
        $('#studentsTable').DataTable({
            "processing": true,
            "serverSide": false, // Set to true if you're fetching data via AJAX
            "paging": true,
            "searching": true,
            "ordering": true,
            "info": true,
            "lengthChange": true,
            "language": {
                "emptyTable": "No data available in table",
                "search": "Search:",
                "lengthMenu": "Display _MENU_ records per page",
                "paginate": {
                    "next": "Next",
                    "previous": "Previous"
                }
            }
        });
    });
</script>
@endpush
