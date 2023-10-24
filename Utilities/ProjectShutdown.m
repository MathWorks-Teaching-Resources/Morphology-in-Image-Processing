function ProjectShutdown
% Reset module to original state that is expected when loading in a new
% MATLAB version.
proj = currentProject;
if isMATLABReleaseOlderThan("R2023b")
    cd(proj.RootFolder)
    try
        if exist(fullfile("Utilities","OldVersions","MainMenuNew.mlx"),"file")
            movefile("MainMenu.mlx", fullfile("Utilities","OldVersions","MainMenuOld.mlx"))
            movefile(fullfile("Utilities","OldVersions","MainMenuNew.mlx"),fullfile(proj.RootFolder,"MainMenu.mlx"))
        end
    catch 
        disp("Failed to move MainMenu.mlx.")
    end
    try
        if exist(fullfile("Utilities","OldVersions","READMENew.mlx"),"file")
            movefile("README.mlx", fullfile("Utilities","OldVersions","READMEOld.mlx"))
            movefile(fullfile("Utilities","OldVersions","READMENew.mlx"),fullfile(proj.RootFolder,"README.mlx"))
        end
    catch
        disp("Failed to move README.mlx.")
    end
    try
        if exist(fullfile("Utilities","OldVersions","BinaryMorphologyBasicsNew.mlx"),"file")
            movefile(fullfile("Scripts","BinaryMorphologyBasics.mlx"), fullfile("Utilities","OldVersions","BinaryMorphologyBasicsOld.mlx"))
            movefile(fullfile("Utilities","OldVersions","BinaryMorphologyBasicsNew.mlx"),fullfile(proj.RootFolder,"Scripts","BinaryMorphologyBasics.mlx"))
        end
    catch
        disp("Failed to move BinaryMorphologyBasics.mlx.")
    end
    try
        if exist(fullfile("Utilities","OldVersions","PracticeProblemsSolnsNew.mlx"),"file")
            movefile(fullfile("Scripts","PracticeProblemsSolns.mlx"), fullfile("Utilities","OldVersions","PracticeProblemsSolnsOld.mlx"))
            movefile(fullfile("Utilities","OldVersions","PracticeProblemsSolnsNew.mlx"),fullfile(proj.RootFolder,"Scripts","PracticeProblemsSolns.mlx"))
        end
    catch
        disp("Failed to move PracticeProblemsSolns.mlx.")
    end
end
end