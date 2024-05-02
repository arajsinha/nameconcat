sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/captest/test/integration/FirstJourney',
		'ns/captest/test/integration/pages/NameList',
		'ns/captest/test/integration/pages/NameObjectPage'
    ],
    function(JourneyRunner, opaJourney, NameList, NameObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/captest') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheNameList: NameList,
					onTheNameObjectPage: NameObjectPage
                }
            },
            opaJourney.run
        );
    }
);