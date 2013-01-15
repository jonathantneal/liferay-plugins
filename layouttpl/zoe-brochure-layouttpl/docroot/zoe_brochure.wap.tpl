#set ($siteHref = $portletURLFactory.create($request, "49", $layout.getPlid(), "ACTION_PHASE"))
#set ($siteName = $layout.getGroup().getDescriptiveName())
#set ($siteLogo = $themeDisplay.getCompanyLogo())
#set ($siteLogoWidth = $themeDisplay.getCompanyLogoWidth())
#set ($siteLogoHeight = $themeDisplay.getCompanyLogoHeight())

<div class="body-header">
	#if (!$themeDisplay.signedIn)
		<a href="$themeDisplay.URLSignIn" class="sign-in" rel="nofollow">$languageUtil.get($locale, "sign-in")</a>
	#end

	<header class="site-header" role="banner">
		<h1 class="site-title">
			<a href="$siteHref" class="logo"><img alt="$siteName" src="$siteLogo"></a>
		</h1>

		<nav class="site-navigation">
			<ul>
				#foreach ($navItem in $navItems)
					#set ($navItemClass = "")

					#if ($navItem.layout == $layout)
						#set ($navItemClass = "selected")
					#end

					<li>
						<a href="$navItem.URL" class="$navItemClass">$navItem.name</a>
					</li>
				#end
			</ul>
		</nav>
	</header>

	<div class="stack s1">
		$processor.processColumn("column-1", "panel p1")
	</div>
</div>

<div class="body-main" id="main" role="main">
	<div class="stack s2">
		$processor.processColumn("column-2", "panel p2")
	</div>
</div>

<div class="body-footer"></div>