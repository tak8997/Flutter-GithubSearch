import 'package:flutter/material.dart';

class RepoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: makeRepos(context)),
    );
  }

  List<Widget> makeRepos(BuildContext context) {
    List<Widget> results = [];
    results.add(Container(
      child: Text("내 깃헙 레포"),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10),
    ));

    for (var i = 0; i < 10; i++) {
      results.add(InkWell(
        onTap: () {},
        child: Column(
          children: [
            Image.asset(
              "images/test_movie_1.png",
              height: 150,
              width: MediaQuery.of(context).size.width,
            ),
            Text("test"),
            Container(
              padding: EdgeInsets.all(5),
            )
          ],
        ),
      ));
    }

    return results;
  }
}
// https://docs.github.com/en/rest/reference/repos
// https://api.github.com
// search/users
// {
//   "total_count": 12,
//   "incomplete_results": false,
//   "items": [
//     {
//       "login": "mojombo",
//       "id": 1,
//       "node_id": "MDQ6VXNlcjE=",
//       "avatar_url": "https://secure.gravatar.com/avatar/25c7c18223fb42a4c6ae1c8db6f50f9b?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png",
//       "gravatar_id": "",
//       "url": "https://api.github.com/users/mojombo",
//       "html_url": "https://github.com/mojombo",
//       "followers_url": "https://api.github.com/users/mojombo/followers",
//       "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
//       "organizations_url": "https://api.github.com/users/mojombo/orgs",
//       "repos_url": "https://api.github.com/users/mojombo/repos",
//       "received_events_url": "https://api.github.com/users/mojombo/received_events",
//       "type": "User",
//       "score": 1,
//       "following_url": "https://api.github.com/users/mojombo/following{/other_user}",
//       "gists_url": "https://api.github.com/users/mojombo/gists{/gist_id}",
//       "starred_url": "https://api.github.com/users/mojombo/starred{/owner}{/repo}",
//       "events_url": "https://api.github.com/users/mojombo/events{/privacy}",
//       "site_admin": true
//     }
//   ]
// }