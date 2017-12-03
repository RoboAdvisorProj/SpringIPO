<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O</title>
</head>
<body>
	<%@ include file="../include/topmenu.jsp"%>
	<!-- Main content -->
	<div class="container">
		<section class="content">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="box box-primary">
						<div class="box-header">
							<h3 class="box-title">글쓰기</h3>
						</div>
						<!-- /.box-header -->

						<form role="form" method="post">
							<div class="box-body">
								<div class="form-group">
									<label for="exampleInputEmail1">제목</label> <input
										type="text" name='title' class="form-control"
										placeholder="Enter Title">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">내용</label>
									<textarea class="form-control" name="content" rows="3"
										placeholder="Enter ..."></textarea>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail1">작성자</label> <input
										type="text" name="writer" class="form-control"
										placeholder="Enter Writer">
								</div>
							</div>
							<!-- /.box-body -->

							<div class="box-footer">
								<button type="submit" class="btn btn-primary">완료</button>
							</div>
						</form>


					</div>
					<!-- /.box -->
				</div>
				<!--/.col (left) -->

			</div>
			<!-- /.row -->
		</section>
	</div>
	<!-- /.content -->
	<!-- /.content-wrapper -->
	<%@ include file="../include/footer.jsp"%>

</body>
</html>
