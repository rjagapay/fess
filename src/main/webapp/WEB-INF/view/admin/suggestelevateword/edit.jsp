<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><la:message key="labels.admin_brand_title" /> | <la:message
		key="labels.suggest_elevate_word_configuration" /></title>
<jsp:include page="/WEB-INF/view/common/admin/head.jsp"></jsp:include>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="/WEB-INF/view/common/admin/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/common/admin/sidebar.jsp">
			<jsp:param name="menuCategoryType" value="suggest" />
			<jsp:param name="menuType" value="suggestElevateWord" />
		</jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					<la:message key="labels.suggest_elevate_word_title_details" />
				</h1>
				<jsp:include page="/WEB-INF/view/common/admin/crud/breadcrumb.jsp"></jsp:include>
			</section>
			<section class="content">
				<la:form styleClass="form-horizontal">
					<la:hidden property="crudMode" />
					<c:if test="${crudMode==2}">
						<la:hidden property="id" />
						<la:hidden property="versionNo" />
					</c:if>
					<la:hidden property="createdBy" />
					<la:hidden property="createdTime" />
					<div class="row">
						<div class="col-md-12">
							<div
								class="box <c:if test="${crudMode == 1}">box-success</c:if><c:if test="${crudMode == 2}">box-warning</c:if>">
								<div class="box-header with-border">
									<jsp:include page="/WEB-INF/view/common/admin/crud/header.jsp"></jsp:include>
									<div class="btn-group pull-right">
										<la:link href="/admin/suggestelevateword"
											styleClass="btn btn-default btn-xs">
											<la:message key="labels.suggest_elevate_word_link_list" />
										</la:link>
										<la:link href="createnew" styleClass="btn btn-success btn-xs">
											<la:message key="labels.suggest_elevate_word_link_create_new" />
										</la:link>
										<la:link href="downloadpage"
											styleClass="btn btn-primary btn-xs">
											<la:message key="labels.suggest_elevate_word_link_download" />
										</la:link>
										<la:link href="uploadpage" styleClass="btn btn-success btn-xs">
											<la:message key="labels.suggest_elevate_word_link_upload" />
										</la:link>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<%-- Message --%>
									<div>
										<la:info id="msg" message="true">
											<div class="alert alert-info">${msg}</div>
										</la:info>
										<la:errors />
									</div>
									<%-- Form Fields --%>
									<div class="form-group">
										<label for="word" class="col-sm-3 control-label"><la:message
												key="labels.suggest_elevate_word_suggest_word" /></label>
										<div class="col-sm-9">
											<la:text property="suggestWord" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="reading" class="col-sm-3 control-label"><la:message
												key="labels.suggest_elevate_word_reading" /></label>
										<div class="col-sm-9">
											<la:text property="reading" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="targetRole" class="col-sm-3 control-label"><la:message
												key="labels.suggest_elevate_word_target_role" /></label>
										<div class="col-sm-9">
											<la:text property="targetRole" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="targetLabel" class="col-sm-3 control-label"><la:message
												key="labels.suggest_elevate_word_target_label" /></label>
										<div class="col-sm-9">
											<la:text property="targetLabel" styleClass="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="boost" class="col-sm-3 control-label"><la:message
												key="labels.suggest_elevate_word_boost" /></label>
										<div class="col-sm-9">
											<la:text property="boost" styleClass="form-control" />
										</div>
									</div>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<jsp:include page="/WEB-INF/view/common/admin/crud/buttons.jsp"></jsp:include>
								</div>
								<!-- /.box-footer -->
							</div>
							<!-- /.box -->
						</div>
					</div>
				</la:form>
			</section>
		</div>
		<jsp:include page="/WEB-INF/view/common/admin/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="/WEB-INF/view/common/admin/foot.jsp"></jsp:include>
</body>
</html>

