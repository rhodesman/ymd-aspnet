
$(document).ready(function () {
    var $boardofdirectors = $("#boardofdirectors");
    var $leadershipexecutiveoperatingteam = $( "#executiveoperatingteam" );
    var $communityLeadershipBoards = $( "#communityleadershipboards" );

    //$leadershipexecutiveoperatingteam.removeClass( "active" );
    //$boardofdirectors.addClass( "active" );
    //$communityLeadershipBoards.removeClass("active");
    if ($boardofdirectors.hasClass("active") && $leadershipexecutiveoperatingteam.hasClass("active") && $communityLeadershipBoards.hasClass("active")) {
        $leadershipexecutiveoperatingteam.removeClass( "active" );
        $communityLeadershipBoards.removeClass("active");
    }
});
