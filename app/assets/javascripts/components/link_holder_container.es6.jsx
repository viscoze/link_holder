class LinkHolderContainer extends React.Component {
  constructor() {
    super();

    this.state = {
      error:       null,
      linkHolders: [],
    };
  }

  getLinkHolders() {
    fetch('/link-holders')
    .then(result => result.json())
    .then(result => this.setState({ linkHolders: result }))
    .catch(error => this.setState({ error }));
  }

  deleteLink(linkId) {
    fetch({
      url: `/links/${linkId}`,
      method: 'DELETE',
    })
    .then()
  }

  deleteLinkList(linkListId) {

  }

  componentWillMount() {
    this.getLinkHolders();
  }

  render () {
    return (
      <div className="LinkHolderContainer">
        {
          this.state.linkHolders.map((linkHolder, index) => {
            const { title, links } = linkHolder;
            return <LinkHolder key={index} title={title} links={links} />
          });
        }
      </div>
    );
  }
}
