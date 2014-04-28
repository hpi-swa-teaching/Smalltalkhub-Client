as yet unclassified
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [
            spec
                package: 'SHC-Core';
                package: 'SHC-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('SHC-Core');
                group: 'Tests' with: #('SHC-Tests');
                group: 'TravisCI' with: #('Tests') ]