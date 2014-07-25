as yet unclassified
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [
            spec
                package: 'SHC-Core';
		    package: 'SHC-Requests';
                package: 'SHC-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('SHC-Core' 'SHC-Requests');
                group: 'Tests' with: #('SHC-Tests');
                group: 'TravisCI' with: #('Tests') ]