<div class="content-box" style="padding-bottom: 1.5em;">
	{{ partial("layout_partials/base_form", ["fields": generalForm, "id": "frm_general_settings"]) }}

	<div class="col-md-12">
		<hr />
		<button class="btn btn-primary" id="saveAct" type="button">
			<b>{{ lang._("Save") }}</b> <i id="saveAct_progress"></i>
		</button>	
	</div>
</div>	

<script>
	$(document).ready(function() {
		const dataGetMap = {"frm_general_settings": "/api/wallmon/general/get"};
		mapDataToFromUI(dataGetMap).done(function() {
			formatTokenizersUI();
		});

		updateStatusControlUI("wallmon");

		$("saveAct").click(function() {
			saveFormToEndpoint(url="/api/wallmon/general/set", formid="frm_general_settings", callback_ok=function() {
				$("#saveAct_progress").addClass("fa fa-spinner fa-pulse");
					ajaxCall(url="/api/wallmon/service/reconfigure", sendData={}, callback=function(data. status){
						updateStatusControlUI("wallmon");
						$("#saveAct_progress").removeClass("fa fa-spinner fa-pulse");
				});
			});
		});

	});
</script>
