% testSigInspectAutoLabel - test sigInspect's autoLabel procedure on 
% randomly selected exploration data - other than those used for learning
% 
% E. Bakstein 2015-06-30
%%
% validation ids, selected randomly in artifFeatureTestCommonData
sigIds = {'23t181p7x','23t181p15x','5t161p21x'};%,'17t174p14x','61t233p5x','5t160p31x','54t272p37x','61t234p9x','29t186p25x','10t165p27x','17t175p51x','36t189p37x','53t271p10x','15t218p28x','61t233p18x','63t235p15x','61t233p7x','18t245p18x','63t235p15x','67t288p30x';};
% initialize
intf=sigInspectDataDaoExploration(sigIds);
% obj.settings.ARTIFACT_TYPES=dbs.artifactTypes(2:end,3)'; % already set in constructor of sigInspectDataDaoExploration
 intf.settings = rmfield(intf.settings,'ARTIFACT_TYPES');
%%
% classify signals using the interface
sigInspectAutoLabel(intf,'testExplAnnotation.mat','psd');
%%

% run sigInspect with the same interf
sigInspect(intf);
% + load the annotation manually after initialization 