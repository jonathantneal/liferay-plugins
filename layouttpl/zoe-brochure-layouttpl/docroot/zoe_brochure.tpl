<div class="body-header">
	#parse ("$fullTemplatesPath/navigation.vm")

	<div class="stack s1">
		$processor.processColumn("column-1", "panel p1")
	</div>
</div>

<div class="body-main" id="main" role="main">
	<div class="stack s2">
		$processor.processColumn("column-2", "panel p2")
	</div>
</div>